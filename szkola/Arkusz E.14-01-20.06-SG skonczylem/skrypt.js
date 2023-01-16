let policz = document.getElementById("policz");
let wynik = document.getElementById("wynik");

policz.onclick = function()
{
    let pow = document.getElementById("pow");
    wynik.innerHTML = pow.value/4;
}

