document.addEventListener('DOMContentLoaded', () => {
    const user = JSON.parse(localStorage.getItem('currentUser'));
    if(user){
        document.getElementById('welcomeMsg').textContent = `Welcome, ${user.AccountEmail}!`;
    }
    else{
        const protectedLinks = document.querySelectorAll('a[href$=".html"]:not([href="Login.html"])');
        // Redirect all protected links if not logged in
        protectedLinks.forEach(link => {
            link.addEventListener('click', (e) => {
                e.preventDefault();
                alert('You must log in first.');
                window.location.href = 'Login.html';
            });
        });
    } 
});

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

