document.addEventListener('DOMContentLoaded', function() {
    const signUpForm = document.querySelector('.signup-form');

    signUpForm.addEventListener('submit', async (e) => {
        e.preventDefault(); // stop page reload

        const firstName = document.getElementById('StudFirstName').value;
        const lastName = document.getElementById('StudLastName').value;
        const dateOfBirth = document.getElementById('StudDateOfBirth').value;
        const gender = document.getElementById('StudGender').value;
        const contactNumber = document.getElementById('StudContactNumber').value;
        const address = document.getElementById('StudAddress').value;
        const studId = document.getElementById('StudId').value;
        const programId = document.getElementById('programId').value;
        const academicStatus = document.getElementById('StudAcademicStatus').value;
        const academicYear = document.getElementById('StudAcademicYear').value;
        const email = document.getElementById('new-email').value;
        const password1 = document.getElementById('new-password').value;
        const password2 = document.getElementById('confirm-password').value;

        if(password1 != password2){
            alert("Passwords didn't match");
            return;
        }

        try {
            const res = await fetch('http://localhost:3000/signup', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    firstName,
                    lastName,
                    dateOfBirth,
                    gender,
                    contactNumber,
                    address,
                    studId,
                    programId,
                    academicStatus,
                    academicYear,
                    email,
                    password: password1
                })
            });

            const data = await res.json();

            if (res.ok) {
                alert("Account created successfully");
                window.location.href = 'Login.html'; // redirect after sign up
            } else {
                alert('Failed to create account: ' + data.message);
            }

        } catch (err) {
            console.error('Error during sign up:', err);
            alert('Network error. Please try again later.');
        }
    });
});
