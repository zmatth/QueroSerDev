function getElement(elemento){
    return document.querySelector(elemento);
}

getElement(`.nome`).addEventListener("blur", function(){
    if(this.value.length < 3){
        getElement("#checaNome").style.display = "block"
        return;
    }
    getElement("#checaNome").style.display = "none";
});

getElement(`.sobrenome`).addEventListener("blur", function(){
    if(this.value.length < 3){
        getElement("#checaSobrenome").style.display = "block"
        return;
    }
    getElement("#checaSobrenome").style.display = "none";
});

let regexCpf = /^[0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2}$/;


getElement(".cpf").addEventListener("blur", function() {

    if(!regexCpf.test(this.value)) {
        getElement("#checaCPF").style.display = "block";
        return;
    };
    getElement("#checaCPF").style.display = "none";
});

let regexEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

getElement(".email").addEventListener("blur", function(){
    if(!regexEmail.test(this.value)){
        getElement(".checaEmail").style.display = "block";
        return;
    }
    getElement(".checaEmail").style.display = "none";
    
});

getElement(".senha").addEventListener("blur",function(){
    if(this.value.length < 3){
        getElement(".checaSenha").style.display = "block"
        return;
    }
        getElement(".checaSenha").style.display = "none"

});

