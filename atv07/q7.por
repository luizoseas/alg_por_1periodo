programa
{
	//Desenvolva um algoritmo que auxilie o professor a verificar se o seu aluno foi 
	//aprovado,  reprovado  ou  está  de  exame  em  sua  disciplina.  O  usuário  deverá 
	//informar as notas da primeira e segunda provas do aluno e o seu percentual de 
	//faltas. O Algoritmo deverá calcular a média das provas e para verificar a situação 
	//do aluno o algoritmo deverá obedecer aos seguintes critérios:
	funcao inicio()
	{
		real md,n1,n2, faltas
		cadeia resultado = ""
		escreva("Digite a nota da primeira prova: ")
		leia(n1)
		escreva("Digite a nota da primeira prova: ")
		leia(n2)
		escreva("Digite o percentual de faltas: ")
		leia(faltas)
		md=(n1+n2)/2
		se(md >= 7){
			resultado = "Aprovado"
		}
		se(md <  7 e md >=5){
			resultado = "Exame"
		}
		se(md < 5){
			resultado = "Reprovado"
		}
		se(faltas > 25){
			resultado = "Reprovado"	
		}
		escreva("Sua situação: "+resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */