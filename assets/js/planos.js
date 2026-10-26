//adiciona interatividade nos planos
document.querySelectorAll('.box').forEach(item => {
    item.addEventListener('click', () => {
        document.querySelectorAll('.box').forEach(box => box.classList.remove('selected'));
        item.classList.add('selected');
    });
});

//arruma navbar travada

document.querySelectorAll('.navbar a').forEach(link => {
    link.addEventListener('click', e => {
        const href = link.getAttribute('href');
        if (href.startsWith('#')) { // Permite rolagem suave apenas para âncoras
            e.preventDefault();
            const target = document.querySelector(href);
            target.scrollIntoView({ behavior: 'smooth' });
        }
    });
});


let menu = document.querySelector('#menu-icon');
let navbar = document.querySelector('.navbar');

//menu redimensionado
menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navbar.classList.toggle('active');
}

window.onscroll = () => {
    menu.classList.remove('bx-x');
    navbar.classList.remove('active');
}