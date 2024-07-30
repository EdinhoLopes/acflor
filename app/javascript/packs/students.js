$(document).ready(function() {
  const entitySelect = $("#entity_select");
  const courseSelect = $("#course_select");

  entitySelect.on("change", function() {
    const entityId = $(this).val();

    $.ajax({
      url: `/courses.json?entity_id=${entityId}`,
      method: 'GET',
      success: function(data) {
        // Clear current options
        courseSelect.empty();

        // Add prompt option
        courseSelect.append('<option value="">Selecione um curso</option>');

        // Add new options
        data.forEach(course => {
          const option = `<option value="${course.id}">${course.course_name}</option>`;
          courseSelect.append(option);
        });
      }
    });
  });
});