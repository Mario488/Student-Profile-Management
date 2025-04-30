document.addEventListener('DOMContentLoaded', async () => {
    const user = JSON.parse(localStorage.getItem('currentUser'));
    const loginLink = document.getElementById('login');
    const logoutLink = document.getElementById('logout');

    if (user) {
        loginLink.style.display = 'none';
        logoutLink.style.display = 'inline';

        try {
            const res = await fetch(`http://localhost:3000/student/${user.StudentID}`);
            if (!res.ok) throw new Error('Failed to fetch profile');
            const student = await res.json();

            // Fill fields
            document.getElementById('studName').textContent = `${student.StudFirstName} ${student.StudLastName}`;
            document.getElementById('studId').textContent = student.StudeIDNum;
            document.getElementById('program').textContent = student.ProgramName || "N/A";
            document.getElementById('yearLv').textContent = student.StudAcademicYear;
            document.getElementById('status').textContent = student.StudAcademicStatus;
            document.getElementById('address').textContent = student.StudAddress;
            document.getElementById('gender').textContent = student.StudGender;
            document.getElementById('email').textContent = student.StudEmail;
            document.getElementById('contactNum').textContent = student.StudContactNumber;
            document.getElementById('birthday').textContent = new Date(student.StudDateOfBirth).toDateString();
        } catch (err) {
            console.error(err);
            alert('Could not load profile data');
        }

    } 
    else {
        loginLink.style.display = 'inline';
        logoutLink.style.display = 'none';
        alert('You are not logged in.');
        window.location.href = 'Login.html';
    }

    logoutLink.addEventListener('click', (e) => {
        e.preventDefault();
        localStorage.removeItem('currentUser');
        window.location.href = 'Login.html';
    });
});
