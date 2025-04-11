document.addEventListener("DOMContentLoaded", function () {
    
    const profs = document.querySelectorAll('.char_prof');
    const popout = document.getElementById('char-popout');
    document.body.appendChild(popout);

    profs.forEach(prof => {
        prof.addEventListener('mouseenter', () => {
            
            popout.classList.remove('hidden');
            const rect = prof.getBoundingClientRect();

            popout.style.top = (window.scrollY + rect.top - popout.offsetHeight) + 'px';
            popout.style.left = (rect.left + rect.width/2 - popout.offsetWidth/2) + 'px';
        });
    
        prof.addEventListener('mouseleave', () => {
            popout.classList.add('hidden');
        });
    });
});