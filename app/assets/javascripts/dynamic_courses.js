document.addEventListener("DOMContentLoaded", function() {
    const entitySelect = document.getElementById('entity_select');
    const courseSelect = document.getElementById('course_select');

    entitySelect.addEventListener('change', function() {
        const entityId = entitySelect.value;

        if (entityId) {
            fetch(`/students/get_courses/${entityId}`)
                .then(response => response.json())
                .then(data => {
                    console.log("response", data);
                    courseSelect.innerHTML = '<option value="">Choose a course</option>';

                    data.forEach(course => {
                        const option = document.createElement('option');
                        option.value = course.id;
                        option.text = course.course_name;
                        courseSelect.appendChild(option);
                    });
                })
                .catch(error => {
                    console.error('Error fetching courses:', error);
                });
        } else {
            courseSelect.innerHTML = '<option value="">Choose a course</option>';
        }
    });
});