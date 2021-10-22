programa
{
	// Desenvolva um algoritmo para informar ao usuário qual a melhor opção de 
	//abastecimento: álcool ou gasolina. O critério de decisão será o seguinte: caso o 
	//valor  do  preço  do  álcool  seja  maior  que  70%  do  preço  da  gasolina,  a  melhor 
	//opção para abastecimento será a gasolina, e caso contrário a melhor opção de 
	//combustível será o álcool.  
	funcao inicio()
	{
		real vGasolina, vAlcool, porcentagem
		cadeia resultado = "Álcool"
		escreva("Digite o valor do Alcool R$ ")
		leia(vAlcool)
		escreva("Digite o valor da Gasolina R$ ")
		leia(vGasolina)
		porcentagem = vAlcool*100/vGasolina
		se(porcentagem > 70){
			resultado = "Gasolina"
		}
		escreva("A melhor opção é "+resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */