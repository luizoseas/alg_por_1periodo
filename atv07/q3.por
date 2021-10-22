programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia resultado = "Resultado: "
		real valor
		inteiro opcao
		escreva("Digite o código da opção para converte a moeda BRL => MOEDA \n 1-DÓLAR \n 2-EURO \n 3-Libra-Esterlina \n 4-Kuna \n 5-Peso-Argentino \n")
		leia(opcao)
		escreva("Digite o valor à ser convertido: ")
		leia(valor)
		escolha(opcao){
			caso 1:
				resultado += "US "+mat.arredondar(valor / 2.71,3) 
			pare
			caso 2: 
				resultado += "EURO "+mat.arredondar(valor / 3.10,3) 
			pare
			caso 3: 
				resultado += "Libra "+mat.arredondar(valor / 4.11,3) 
			pare
			caso 4: 
				resultado += "Kuna "+mat.arredondar(valor / 0.40,3)
			pare
			caso 5: 
				resultado += "Peso Argentino "+mat.arredondar(valor/0.32,3) 
			pare
			caso contrario:
				resultado = "Opção não encontrada" 
			pare
		}
		escreva(resultado)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 391; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */