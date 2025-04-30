document.addEventListener('DOMContentLoaded', function() {
    const loginForm = document.querySelector('.login-form');

    loginForm.addEventListener('submit', async (e) => {
        e.preventDefault(); // stop page reload

        const email = document.getElementById('email').value;
        const password = document.getElementById('password').value;

        try {
            const res = await fetch('http://localhost:3000/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ email, password })
            });

            const data = await res.json();

            if (res.ok) {
                console.log('Login successful:', data);
                localStorage.setItem('currentUser', JSON.stringify(data.user));
                window.location.href = 'Home.html'; // redirect after login
            } else {
                alert('Login failed: ' + data.message);
            }

        } catch (err) {
            console.error('Error during login:', err);
        }
    });
});
