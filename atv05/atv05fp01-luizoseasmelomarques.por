programa
{
	//Desenvolva um algoritmo que solicite ao usuário a entrada de dois números, o primeiro será armazenado na variável A e o segundo será armazenado na variável B. Na sequência do algoritmo os valores digitados em A e B deveram ser invertidos ou seja, o valor da variável A deverá estar em B e o valor da variável B deverá estar na variável A. Após realizar a troca imprima na tela os dois números.
	funcao inicio()
	{
		inteiro A, B, TEMP
		escreva("Digite um número inteiro (A): ")
		leia(A)
		escreva("Digite outro número inteiro (B): ")
		leia(B)
		TEMP = A
		A = B
		B = TEMP
		escreva("Variável A: ",A)
		escreva("\nVariável B: ",B)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */