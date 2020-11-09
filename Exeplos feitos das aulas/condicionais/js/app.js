/*if*/
// if (condição) {
//     // fazer isto caso a condição seja  verdadeira
//     } else {
//     // fazer isto caso a condição seja falsa
// }

// var diaDaSemana = "Domingo"

// if (diaDaSemana == "Domingo") {
// 	console.log("Hoje é dia de churrasco!")
// } else {
// 	console.log("Hoje não é dia de churrasco :(")
// }


/*Operador Ternário*/
// condição ? expressão1 : expressão2

// var diaDaSemana = "Domingo"

// diaDaSemana == "Domingo" ? console.log("churras!") : console.log("que pena.")

/*switch*/
var fruta = "abacaxi";

switch (fruta) {
    case "abacaxi": //fruta == "abacaxi"
	    console.log("Me ajuda descascar esse abacaxi?");
        break;
    case "mamão": //fruta == "mamão"
	    console.log("É mamão com açúcar!"); 
        break;
    default:
	    console.log("É outra fruta");
}