programa
{
	//Crie um algoritmo que receba dois números e ao final exiba os mesmos em  ordem crescente.
	funcao inicio()
	{
		real n1, n2
		cadeia resultado
		escreva("Digite dois números: \n")
		leia(n1,n2)
		se(n1 >n2){
			resultado = n2+"\n "+n1
		}senao{
			resultado = n1+"\n "+n2
		}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */