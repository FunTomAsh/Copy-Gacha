document.addEventListener("DOMContentLoaded", function () {
    //charcter popout
    const profs = document.querySelectorAll('.char_prof');

    profs.forEach(prof => {
        prof.addEventListener('mouseenter', async (e) => {
            const old = document.getElementById('char');
            if (old) old.remove();

            const postId = prof.getAttribute('data-post-id'); 

            const response = await fetch(`${ajax_object.ajax_url}?action=char_popout&post_id=${postId}`);
            const html = await response.text();
            const tempDiv = document.createElement('div');
            tempDiv.innerHTML = html;

            const popout = tempDiv.firstElementChild;
            document.body.appendChild(popout);

            const rect = prof.getBoundingClientRect();
            popout.style.top = (window.scrollY + rect.top - popout.offsetHeight - 10) + 'px';
            popout.style.left = (window.scrollX + rect.left) + 'px';
        });

        prof.addEventListener('mouseleave', () => {
            const old = document.getElementById('char');
            if (old) old.remove();
        });
    });
});