const boxNumber = document.querySelector("#boxNumber");
const verTabuada = document.querySelector("#verTabuada");
const resultadoTabuada = document.querySelector("#resultadoTabuada");

verTabuada.addEventListener("click", () => {
	const numero = Number(boxNumber.value);

	if (boxNumber.value.trim() === "") {
		resultadoTabuada.textContent = "Digite um número para continuar.";
		boxNumber.focus();
		return;
	}

	resultadoTabuada.innerHTML = `<h3>Tabuada do ${numero}</h3>`;

	for (let multiplicador = 1; multiplicador <= 10; multiplicador++) {
		const resultado = document.createElement("p");
		resultado.textContent = `${numero} x ${multiplicador} = ${numero * multiplicador}`;
		resultadoTabuada.appendChild(resultado);
	}
});