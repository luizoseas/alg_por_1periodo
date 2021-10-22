programa
{
	//  Pedrinho tem um cofrinho com muitas moedas, e deseja saber quantos reais conseguiu poupar. Faça um algoritmo para ler a quantidade de cada tipo de moeda e imprimir o valor total economizado em reais. Considere que existem moedas de 1, 5, 10, 25 e 50 centavos, e ainda moedas de 1 real. Não havendo moedas de um tipo, a quantidade respectiva é zero.

	funcao inicio()
	{
		inteiro cent1,cent5,cent10,cent25,cent50,real1
		real total
		escreva("Digite a quantidade de moedas de 1 centavo: ")
		leia(cent1)
		escreva("Digite a quantidade de moedas de 5 centavos: ")
		leia(cent5)
		escreva("Digite a quantidade de moedas de 10 centavos: ")
		leia(cent10)
		escreva("Digite a quantidade de moedas de 25 centavos: ")
		leia(cent25)
		escreva("Digite a quantidade de moedas de 50 centavos: ")
		leia(cent50)
		escreva("Digite a quantidade de moedas de 1 real: ")
		leia(real1)
		total = (cent1*0.01)+(cent5*0.05)+(cent10*0.10)+(cent25*0.25)+(cent50*0.50)+real1
		escreva("\n=====================\nVALOR TOTAL: R$"+total+"\n=====================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */