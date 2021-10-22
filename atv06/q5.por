programa
{
	//Crie um algoritmo que receba 10 números e ao seu final o algoritmo deverá exibir  a  quantidade  de  números
	//impares  e  quantidade  de  números  pares digitados.  
	funcao inicio()
	{
		inteiro n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,impares = 0, pares = 0
		escreva("Digite 10 números: \n")
		leia(n1,n2,n3,n4,n5,n6,n7,n8,n9,n10)2
		se((n1%2)==0){pares++}senao{impares++}
		se((n2%2)==0){pares++}senao{impares++}
		se((n3%2)==0){pares++}senao{impares++}
		se((n4%2)==0){pares++}senao{impares++}
		se((n5%2)==0){pares++}senao{impares++}
		se((n6%2)==0){pares++}senao{impares++}
		se((n7%2)==0){pares++}senao{impares++}
		se((n8%2)==0){pares++}senao{impares++}
		se((n9%2)==0){pares++}senao{impares++}
		se((n10%2)==0){pares++}senao{impares++}
		escreva("\n A quantidade de número pares foram: "+pares+" \n A quantidade de números ímpares foram: "+impares)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 633; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */