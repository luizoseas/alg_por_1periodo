programa
{
	//Desenvolva  um  algoritmo  quer  leia  3  valores  (A,  B  e  C)  representando  as 
	//medidas dos lados de um triângulo. Ao final o algoritmo deverá informar se os 
	//valores informados formam ou não um triângulo. Obs.: para formar um triângulo, 
	//o valor de cada lado deve ser menor que a soma dos outros 2 lados.
	funcao inicio()
	{
		real a,b,c
		logico condicao = verdadeiro
		cadeia resultado
		escreva("Informe o valor do lado A do triangulo: ")
		leia(a)
		escreva("Informe o valor do lado B do triangulo: ")
		leia(b)
		escreva("Informe o valor do lado C do triangulo: ")
		leia(c)
		se(nao(a+b>c)){
			condicao = falso
		}
		se(nao(b+c>a)){
			condicao = falso
		}
		se(nao(a+c>b)){
			condicao = falso
		}
		se(condicao){
			resultado = "Os valores informados formam um triangulo"
		}senao{
			resultado = "Os valores informados não formam um triangulo"	
		}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 693; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */