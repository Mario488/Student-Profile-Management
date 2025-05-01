async function loadEvaluation(studentId) {
    const res = await fetch(`http://localhost:3000/evaluation?studentId=${studentId}`);
    const data = await res.json();
  
    const container = document.querySelector('.infoContainer');
    let totalUnits = 0;
  
    data.forEach(entry => {
      const fieldDiv = document.createElement('div');
      fieldDiv.className = 'fieldContainer';
      fieldDiv.innerHTML = `
        <span class="evalCode">${entry.code}</span>
        <span class="evalDescription">${entry.description}</span>
        <span class="evalUnits">${entry.units}</span>
        <span class="evalGrades">${entry.grade}</span>
        <span class="evalSemTaken">${entry.semester}</span>
      `;
      container.insertBefore(fieldDiv, container.lastElementChild); 
      totalUnits += entry.units;
    });
  
    container.querySelector('.evalUnitsTakenValue').textContent = totalUnits.toFixed(2);
}

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
    
    loadEvaluation(user.StudentID);

    logoutLink.addEventListener('click', (e) => {
        e.preventDefault();
        localStorage.removeItem('currentUser');
        window.location.href = 'Login.html';
    });
});


  
  
