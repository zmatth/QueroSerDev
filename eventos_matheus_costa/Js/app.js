function vermelho(){
    style.backgroundColor = "red";
}


let corpo = document.querySelector(".corpo");

let cumprimentar = document.querySelector(".btnOla");
cumprimentar.onclick = function () {
    alert("Olá");
}

let fundoVermelho = document.querySelector(".mudaFundo");
fundoVermelho.onclick = function () {
    corpo.style.backgroundColor = "green";
}

let primeiraImagem = document.querySelector(".imagem1");
primeiraImagem.onmouseover = function () {
    console.log("vi a primeira imagem");
}

let segundaImagem = document.querySelector(".imagem2");
segundaImagem.onclick = function(){
    console.log("estou clicando na imagem");
}
segundaImagem.addEventListener("click", function(event){
    console.log(event.clientX);
    console.log(event.clientY);
})

let defaultPrev = document.getElementById("link");
defaultPrev.addEventListener("click", function(event){
    event.preventDefault();
})

corpo.addEventListener("click", function(){
    this.style.backgroundColor = "red";
});

let btnTirarFundo = document.querySelector(".btnTiraFundo");
btnTirarFundo.removeEventListener("click", function(){});



    // // timers
    // let tempo = 10000;
    // setTimeout(function () {
    //     alert("Se passaram 10 segundos")
    //     clearInterval(intervalos);
    // }, tempo)

    // let intervalos = setInterval(function () {
    //     alert("Faz uma pausa, passou 5 segundos");
    // }, 5000)
