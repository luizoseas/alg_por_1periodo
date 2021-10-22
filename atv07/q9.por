programa
{
	// Desenvolva um algoritmo que receba as idades de 2 homens e de 2 mulheres 
	//(considere  que  as  idades  dos  homens  serão  sempre  diferentes  entre  si,  bem 
	//como as das mulheres). Ao final o algoritmo deverá calcular e informar a soma 3  
	//das  idades  do  homem  mais  velho  com  a  mulher  mais  nova,  e  o  produto  das 
	//idades do homem mais novo com a mulher mais velha.
	funcao inicio()
	{
		inteiro iA // Homem mais velho
			,iB // Homem mais novo
			,iC // Mulher mais velha
			,iD // Mulher mais nova
			, Temp //Variável temporário
		escreva("Digite a Idade dos dois homens, respectivamente: ")
		leia(iA,iB)
		escreva("Digite a Idade das duas mulheres, respectivamente: ")
		leia(iC,iD)

		se(iB>iA){
			Temp = iB
			iB = iA
			iA = Temp
		}
		se(iD>iC){
			Temp = iD
			iD = iC
			iC = Temp
		}
		escreva("Soma das idades do homem mais velho e mulher mais nova é: "+(iA+iD)+" \n Produto das idades do homem mais novo e mulher mais velha: "+(iC*iB))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 837; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */