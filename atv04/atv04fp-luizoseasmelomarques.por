programa
{
	
	funcao inicio()
	{
		inteiro filhos, chocolates, sobra, divisao
		escreva("Digite a quantidade de chocolates: ")
		leia(chocolates)
		escreva("Digite a quantidade de filhos: ")
		leia(filhos)
		sobra=chocolates % filhos
		divisao= (chocolates-sobra)/filhos
		escreva("\nSe são "+filhos+" filhos e "+chocolates+" chocolates")
		escreva("\nCada filho receberá: ",divisao)
		escreva("\nsofia receberá: ",sobra)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */