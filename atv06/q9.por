programa
{
	//Desenvolva um algoritmo que deverá informar se a maioria dos alunos de um 
	//curso técnico têm mais ou menos de dezoito anos. O algoritmo deverá receber 
	//a entrada de cinco idades aleatórias e verificar se as mesmas são maiores ou 
	//menores de dezoito anos. Caso a maioria dos alunos seja menor de idade deverá 
	//ser exibida a seguinte mensagem: “A maioria dos alunos possui menos de 18 
	//anos.”, caso contrario deverá ser exibida a mensagem: “A maioria dos alunos 
	//possui mais de 18 anos.”.  
	funcao inicio()
	{
		cadeia resultado
		inteiro i1,i2,i3,i4,i5, maior = 0, menor = 0
		escreva("Digite a idade dos 5 alunos do curso técnico: \n")
		leia(i1,i2,i3,i4,i5)
		se(i1 > 17){maior++}senao(menor++)
		se(i2 > 17){maior++}senao(menor++)
		se(i3 > 17){maior++}senao(menor++)
		se(i4 > 17){maior++}senao(menor++)
		se(i5 > 17){maior++}senao(menor++)
		se(menor > maior){
			resultado = "A maioria dos alunos possui menos de 18 anos."
		}senao{
			resultado = "A maioria dos alunos possui mais de 18 anos."
		}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 733; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */