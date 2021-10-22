programa
{
	//Desenvolva um algoritmo que receba o nome de 2 times e o número de gols 
	//marcados por cada um deles na partida. Ao final o algoritmo deverá informar o 
	//time  vencedor  e  caso  não  exista  um  vencedor  deverá  ser  impressa  a  palavra 
	//EMPATE.
	funcao inicio()
	{
		cadeia time1, time2
		inteiro gol1, gol2
		escreva("Digite o nome do time 1: ")
		leia(time1)
		escreva("Digite a quantidade de gols do time 1: ")
		leia(gol1)
		escreva("Digite o nome do time 2: ")
		leia(time2)
		escreva("Digite a quantidade de gols do time 2: ")
		leia(gol2)
		se(gol1 > gol2){
			escreva("TIME "+time1+" VENCEU")
		}
		se(gol2 > gol1){
			escreva("TIME "+time2+" VENCEU")
		}
		se(gol2 == gol1){
			escreva("EMPATE")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 509; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */