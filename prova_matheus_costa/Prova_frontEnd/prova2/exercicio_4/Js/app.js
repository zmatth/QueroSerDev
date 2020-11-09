function getElem(elemento){
    return document.querySelector(elemento);
}

getElem(".nomeMedico").addEventListener("blur", function(){
    if(this.value.length < 2 ){
        getElem(".verificaNomeMedico").style.display = "block";
        return;
    }
    getElem(".verificaNomeMedico").style.display = "none";
})


let regexCpf = /^[0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2}$/;


getElem(".cpfPaciente").addEventListener("blur", function() {

    if(!regexCpf.test(this.value)) {
        getElem(".verificaCpfPaciente").style.display = "block";
        return;
    };
    getElem(".verificaCpfPaciente").style.display = "none";
});


let regexQtdCx = /^[0-9]{2}$/;
getElem(".qtdCaixas").addEventListener("blur", function(){
    if(!regexQtdCx.test(this.value)){
        alert("verifique a quantidade de caixas");
        return
    }
})