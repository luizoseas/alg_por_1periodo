programa
{
	//Desenvolva um algoritmo que receba dois números e exiba qual foi o maior número digitado.  
	funcao inicio()
	{
		inteiro n1,n2
		cadeia resultado = "O maior número digitado foi: "
		escreva("Digite um número Inteiro: \n")
		leia(n1)
		escreva("Digite outro número Inteiro: \n")
		leia(n2)
		se(n1>n2){
			resultado += n1
		}senao{
			resultado += n2
		}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */