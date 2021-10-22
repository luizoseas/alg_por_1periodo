programa
{
	//Desenvolva  um  algoritmo  para  auxiliar  as  vendas  de  uma  loja  de  roupas 
	//atacadista.  A  loja  trabalha  apenas  com  cinco  tipos  de  peças  de  roupa  sendo 
	//estas: Meias (R$ 5,00), Calças (R$ 78,00), Camisetas (R$ 34,50), Camisas (R$ 
	//56,00) e Cuecas (R$ 22,00). O aplicativo deverá solicitar o código da mercadoria 
	//e a quantidade de peças compradas e calcular e exibir o valor que deverá ser 
	//pago. (Utilizar a estrutura ESCOLHA).
	funcao inicio()
	{
		inteiro opcao,quantidade
		real compra = 0.0
		logico digitado = verdadeiro
		escreva("\n PEÇAS \n 1-MEIAS (R$5,00) \n 2-CALÇAS (R$78,00) \n 3-CAMISETAS (R$34,50) \n 4-CUECAS (R$20,00) \n")
		leia(opcao)
		escolha(opcao){
			caso 1:
				compra=5.0
			pare
			caso 2: 
				compra=78.0
			pare
			caso 3: 
				compra=34.5
			pare
			caso 4: 
				compra=20.0
			pare
			caso contrario:
				digitado=falso
				escreva("Opção não encontrada!")
			pare
		}
		se(digitado){
			escreva("Digite a quantidade de peças: ")
			leia(quantidade)
			escreva("O valor final é: R$ "+compra*quantidade)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 570; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */