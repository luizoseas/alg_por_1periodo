programa
{
	// Desenvolva um algoritmo que receba 3 números e ao seu final exiba qual é o maior e o menor número. 
	funcao inicio()
	{
		real n1, n2, n3, maior, menor
		escreva("Digite 3 numeros: \n")
		leia(n1,n2,n3)
		se(n1 > n2 ){
			maior = n1
			menor = n2
		}senao{
			maior = n2
			menor = n1
		}
		se(n3>maior){
			maior = n3
		}senao{
			se(n3<menor){
				menor = n3
			}	
		}
		escreva(" O maior número é: "+maior+" \n O menor número é: "+menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 348; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */