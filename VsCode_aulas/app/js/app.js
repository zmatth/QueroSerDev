/objetos/

let contaBancaria = {
    ag: 0001,
    numero: "099876-1",
    nome: "Matheus",
    sobrenome: "Costa",
    nomeCompleto: function(){
        return `${this.nome} ${this.sobrenome}`
    },

    saldo: 5000,
    chequeEspecial: true,
    limiteEspecial: 1000,
};