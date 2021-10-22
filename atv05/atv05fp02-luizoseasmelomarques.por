programa
{
	// Um motorista deseja colocar no seu tanque X reais de gasolina. Escreva um algoritmo para ler o preço do litro da gasolina e o valor do pagamento, e exibiaquantos litros ele conseguiu colocar no tanque.
	funcao inicio()
	{
		real valorCombustivel, valorPagamento, litros
		escreva("Digite o valor do combutível R$/L: ")
		leia(valorCombustivel)
		escreva("Digite o valor do pagamento: ")
		leia(valorPagamento)
		litros = valorPagamento/valorCombustivel
		escreva(litros+" L")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 427; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */