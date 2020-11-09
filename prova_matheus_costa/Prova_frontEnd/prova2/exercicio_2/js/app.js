let ganhadores = ["1000,00", "800,00", "500,00"];

function mostrarPremio(colocacao){

switch (colocacao){
    case 1:
        console.log(ganhadores[0]);
        break;
    case 2:
        console.log(ganhadores[1]);
        break;
    case 3:
        console.log(ganhadores[2]);
        break;
    default:
        console.log("Sem prêmio");

}
}