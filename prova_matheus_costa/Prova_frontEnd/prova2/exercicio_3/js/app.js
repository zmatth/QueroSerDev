$(document).ready(function(){
    $(".owl-carousel").owlCarousel({
        loop:true,
        margin:10,
        autoWidth: true,
        nav: true
    });
  });

let itens = document.querySelectorAll(".itensUl");

for (let i = 0; i<itens.length; i++){
    itens[i].textContent = (`item nav ${i+1}`);
}

console.log(itens);
