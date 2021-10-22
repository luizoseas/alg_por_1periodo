programa
{
	//Uma imobiliária possui dificuldades em definir a comissão dos seus 
	//corretores. Desenvolva um algoritmo que deverá informar a comissão a ser paga 
	//para  cada  corretor.  Caso  o  valor  da  venda  seja  superior  a  R$  200.000,00  a 
	//comissão do corretor deverá ser de 6% sobre o valor da venda. Caso o valor da 
	//venda  seja  inferior  ou  igual  a  R$  200.000,00  a  comissão  será  de  4%  sobre  o 
	//valor da venda
	funcao inicio()
	{
		real venda, comissao
		escreva("Informe o valor da venda: \n")
		leia(venda)
		se(venda>200000){
			comissao = (venda*6)/100 
		}senao{
			comissao = (venda*4)/100 	
		}
		escreva("A comissão do corretor é R$ "+comissao)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */