programa
{
	//Desenvolva um algoritmo que realize o cálculo das quatro operações básicas 
	//entre  dois  números.  O  algoritmo  deverá  solicitar  que  o  usuário  digite  os  dois 
	//números e depois solicitar qual operação matemática o usuário deseja realizar. 
	//Ao  final  do  algoritmo  deverá  ser  exibido  o  resultado  da  operação.  (Utilizar  a 
	//estrutura ESCOLHA).
	funcao inicio()
	{
		cadeia resultado
		real entrada1, entrada2
		inteiro opcao
		escreva("\n DIGITE O CÓDIGO DA OPERAÇÃO \n 1-SOMA \n 2-SUBTRAÇÃO \n 3-MULTIPLICAÇÃO \n 4-DIVISÃO \n")
		leia(opcao)
		escreva("\n Digite os numeros respectivamente para processar na operação: ")
		leia(entrada1,entrada2)
		escolha(opcao){
			caso 1: 
				resultado=entrada1+" + "+entrada2+" = "+(entrada1+entrada2)
			pare
			caso 2: 
				resultado=entrada1+" - "+entrada2+" = "+(entrada1-entrada2)
			pare
			caso 3: 
				resultado=entrada1+" * "+entrada2+" = "+(entrada1*entrada2)
			pare
			caso 4: 
				resultado=entrada1+" / "+entrada2+" = "+(entrada1/entrada2)
			pare
			caso contrario:
				resultado="Operação não encontrada."
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
 * @POSICAO-CURSOR = 705; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */