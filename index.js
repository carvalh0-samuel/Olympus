//Texto a ser modificado pelo javascript
const texts = ["O CORPO DOS SONHOS", "O MELHOR TREINAMENTO", "TRANSFORME-SE"];
let index = 0;
const textElement = document.querySelector(".multiple-text");

//função para modificar o texto
function typeEffect() {
    textElement.textContent = texts[index];
    index = (index + 1) % texts.length;
    setTimeout(typeEffect, 2000);
}
//chamada da função
typeEffect();

//navegação
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