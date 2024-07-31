document.addEventListener("DOMContentLoaded", function() {
  const entitySelect = document.getElementById("entity_select");
  const courseSelect = document.getElementById("course_select");

  entitySelect.addEventListener("change", function() {
    const entityId = this.value;

    fetch(`/courses.json?entity_id=${entityId}`)
      .then(response => response.json())
      .then(data => {
        // Clear current options
        while (courseSelect.options.length > 0) {
          courseSelect.remove(0);
        }

        // Add prompt option
        const promptOption = document.createElement("option");
        promptOption.text = "Selecione um curso";
        promptOption.value = "";
        courseSelect.add(promptOption);

        // Add new options
        data.forEach(course => {
          const option = document.createElement("option");
          option.text = course.course_name;
          option.value = course.id;
          courseSelect.add(option);
        });
      })
      .catch(error => console.error('Error fetching courses:', error));
  });
});