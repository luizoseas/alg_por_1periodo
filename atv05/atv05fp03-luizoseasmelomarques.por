programa
{
	// Escreva um algoritmo para ler o nome e a idade de uma pessoa, ao seu final o algoritmo deverá exibir quantos dias e também quantas horas de vida ela possui. Considere sempre anos completos, que um ano possui 365 dias e que um dia possui 24 horas. Ex: uma pessoa com 19 anos possui 6935 dias de vida e 166440 horas de vida.
	funcao inicio()
	{
		inteiro idade, dias, horas
		cadeia nome
		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite sua idade: ")
		leia(idade)
		dias=idade*365
		horas=dias*24
		escreva(nome+" pussui "+dias+" dias de vida e "+horas+" horas de vida.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 512; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */