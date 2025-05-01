async function loadEnrolled(studentId) {
    const res = await fetch(`http://localhost:3000/enrolled?studentId=${studentId}`); // make an http request
    const data = await res.json(); // obtain the data
  
    const container = document.querySelector('.infoContainer'); // get the container 
  
    // Filling the container with the returned data
    data.forEach(entry => {
      const fieldDiv = document.createElement('div');
      fieldDiv.className = 'fieldContainer';
      fieldDiv.innerHTML = `
        <span class="enrolCode">${entry.code}</span>
        <span class="enrolDescription">${entry.description}</span>
        <span class="enrolUnits">${entry.units}</span>
        <span class="enrolSection">${entry.section}</span>
        <span class="enrolInstructor">${entry.instructor}</span>
      `;
      container.insertBefore(fieldDiv, container.lastElementChild); 
    });
}

// This will execute everytime when the page loads
document.addEventListener('DOMContentLoaded', () => {
    const user = JSON.parse(localStorage.getItem('currentUser')); // trying to get the current user (if someone is logged in)
    const loginLink = document.getElementById('login'); // get the login button
    const logoutLink = document.getElementById('logout'); // get the logout button

    // This toggles the login and logout buttons baes
    if (user) {
        loginLink.style.display = 'none';
        logoutLink.style.display = 'inline';
    } else {
        loginLink.style.display = 'inline';
        logoutLink.style.display = 'none';
    }

    loadEnrolled(user.StudentID); 

    logoutLink.addEventListener('click', (e) => {
        e.preventDefault();
        localStorage.removeItem('currentUser');
        window.location.href = 'Login.html';
    });
});



