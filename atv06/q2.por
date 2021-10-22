programa
{
	//Desenvolva um algoritmo que receba um número e verifique se o mesmo é par ou impar
	funcao inicio()
	{
		inteiro numero
		cadeia resultado = "\n O número digitado é "
		escreva("Digite um número Inteiro: \n")
		leia(numero)
		se((numero%2)==0){
			resultado += "Par"
		}senao{
			resultado += "Impar"	
		}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 138; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */