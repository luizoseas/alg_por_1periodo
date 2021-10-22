programa
{
	//Desenvolva  um  algoritmo  que  realize  as  quatro  operações  matemáticas 
	//básicas  entre  dois  números.  O  algoritmo  deverá  solicitar  a  entrada  de  dois 
	//números  e  em  seguida  perguntar  ao  usuário  qual  operação  o  mesmo  deseja 
	//realizar.  Ao  final  do  algoritmo  deverá  ser  exibido  o  resultado  com  a  opção 
	//matemática selecionada pelo usuário.
	funcao inicio()
	{
		inteiro n1,n2, operacao
		cadeia resultado = "Operação não encontrada"
		escreva("Digite dois números (Inteiro): ")
		leia(n1,n2)
		escreva("Digite o código da operação desejada: \n 1-Adição \n 2-Subtração \n 3-Multiplicação \n 4-Divisão \n")
		leia(operacao)
		se(operacao==1){resultado=n1+"+"+n2+"="+(n1+n2)}
		se(operacao==2){resultado=n1+"-"+n2+"="+(n1-n2)}
		se(operacao==3){resultado=n1+"*"+n2+"="+(n1*n2)}
		se(operacao==4){resultado=n1+"/"+n2+"="+(n1/n2)}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 735; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */