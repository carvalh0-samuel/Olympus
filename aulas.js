//quando clica na caixa exibe o texto
document.querySelectorAll('.row').forEach(row => {
    row.addEventListener('click', () => {
        // Primeiro, ocultar todos os parágrafos
        document.querySelectorAll('.row p').forEach(p => {
            p.classList.remove('visible');
        });

        // Agora, exibir o parágrafo da aula clicada
        const paragraph = row.querySelector('p');
        paragraph.classList.add('visible');
    });
});

//ARRUMA A NAVBAR TRAVADA
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