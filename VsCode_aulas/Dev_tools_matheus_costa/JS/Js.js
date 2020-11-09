// 1

var int_pos = 1;
var int_neg = -1;
var decimal = 0.5;
var text = "String";
var verdade = true;

// 2

console.log(int_pos);
console.log(int_neg);
console.log(decimal);
console.log(text);
console.log(verdade);

// 3
var nome = "matheus";
var sobrenome = "costa";

//4
console.log(nome);
console.log(nome, sobrenome);

//7
var valorNulo = null;
var naoDefinido = undefined;

console.log(valorNulo);
console.log(naoDefinido);

var frutas = ["maça", "mamão", "pera", "banana", "uva"];
console.log(frutas);

var rd = "RD está aqui agora!";
console.log(rd);
var casado = false;

var casado2 = true;

casado != casado;
casado2 != casado2;

console.log(!(casado));
console.log(!(casado2));


//12

var nota = 10;

switch(nota){

    case 10:
    console.log("Melhores alunos");
    break;
    
    case 9:
    console.log("Melhores alunos");
    break;
    
    case 8:
    console.log("Muito bom");
    break;

    case 7:
    console.log("Muito bom");
    break;

    case 6:
    console.log("Ufa, voce passou");
    break;

    case 5:
    console.log("Ufa, voce passou");
    break;

    case 4:
    console.log("Recupecao");
    break;
    
    case 3:
    console.log("Reprovado");
    break;

    case 2:
    console.log("Reprovado");
    break;

    case 1:
    console.log("Reprovado");
    break;

    case 0:
    console.log("Reprovado");
    break;

    default: console.log("Nota inválida");
}