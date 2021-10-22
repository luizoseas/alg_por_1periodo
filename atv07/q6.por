programa
{
	//Desenvolva um algoritmo que deverá solicitar a nota de atendimento de um 
	//telemarketing.  A  nota  poderá  ter  como  valor  máximo  10  e  mínimo  0.  Após  o 
	//usuário digitar a nota, o algoritmo deverá exibir a classificação do atendimento 
	//seguindo a tabela abaixo:  
	funcao inicio()
	{
		real nota
		escreva("Digite a nota do atendimento: ")
		leia(nota)
		se (nota <= 10.0 e nota >= 8.0){
			escreva("Ótimo")
		}
		se (nota <= 7.9 e nota >= 6.5){
			escreva("Bom")
		}
		se (nota <= 6.4 e nota >= 5.0){
			escreva("Regular")
		}
		se (nota <= 4.9 e nota >= 2.5){
			escreva("Ruim")
		}
		se (nota <= 2.4 e nota >= 0){
			escreva("Péssimo")
		}
		se(nota > 10.00 ou nota < 0){
			escreva("Classificação não encontrada")
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */