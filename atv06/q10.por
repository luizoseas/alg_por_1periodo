programa
{
	
	//Desenvolva um algoritmo que auxilie os professores a calcularem a situação 
	//final de seus alunos. Ao final o algoritmo deverá exibir se o aluno foi aprovado, 
	//reprovado ou está de exame. O algoritmo deverá solicitar a primeira e segunda 
	//nota do alunos e calcular a média simples das mesmas. Os critérios para definir 
	//a situação dos alunos são: Caso a média seja maior ou igual a 7 o aluno está 
	//aprovado, caso a média seja menor que 7 e maior ou igual a 4 o aluno está de 
	//exame  e  caso  a  média  seja  menor  do  que  4  o  aluno  esta  automaticamente 
	//reprovado.  
	funcao inicio()
	{
		real n1,n2, media
		cadeia resultado = ""
		escreva("Digite a nota da primeira avaliação: \n")
		leia(n1)
		escreva("Digite a nota da segunda avaliação: \n")
		leia(n2)
		media = (n1+n2)/2
		se(media >= 7){
			resultado = "Aprovado"
		} 
		se(media<7 e media>=4){
			resultado = "Exame"	
		}
		se(media < 4){
			resultado = "Reprovado"
		}
		escreva("A situação do aluno é: "+resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 927; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */