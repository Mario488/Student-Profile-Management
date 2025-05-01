document.addEventListener('DOMContentLoaded', () => {
    const user = JSON.parse(localStorage.getItem('currentUser'));
    const loginLink = document.getElementById('login');
    const logoutLink = document.getElementById('logout');

    if (user) {
        loginLink.style.display = 'none';
        logoutLink.style.display = 'inline';
    } else {
        loginLink.style.display = 'inline';
        logoutLink.style.display = 'none';
    }

    logoutLink.addEventListener('click', (e) => {
        e.preventDefault();
        localStorage.removeItem('currentUser');
        window.location.href = 'Login.html';
    });
});

document.addEventListener('DOMContentLoaded', () => {
    const semDropdown = document.getElementById('sem-choice');

    semDropdown.addEventListener('change', async () => {
        const semester = semDropdown.value;
        const user = JSON.parse(localStorage.getItem('currentUser'));

        try {
            const res = await fetch(`http://localhost:3000/grades/${encodeURIComponent(semester)}?studentId=${user.StudentID}`);
            const data = await res.json();

            const container = document.querySelector('.infoContainer');
            container.innerHTML = ''; // Clear current

            data.forEach(subject => {
                const div = document.createElement('div');
                div.classList.add('fieldContainer');
                div.innerHTML = `
                    <span class="subjCode">${subject.code}</span>
                    <span class="subjDescription">${subject.description}</span>
                    <span class="subjUnits">${subject.units}</span>
                    <span class="subjGrades">${subject.grade}</span>
                    <span class="subjInstructor">${subject.instructor}</span>
                `;
                container.appendChild(div);
            });
        } catch (err) {
            console.error('Failed to fetch grades:', err);
        }
    });
});

