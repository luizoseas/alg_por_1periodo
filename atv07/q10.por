programa
{
	//Desenvolva um algoritmo onde o usuário poderá selecionar entre diversas 
	//funcionalidades:   
	//• A primeira funcionalidade disponível será a realização de uma das quatro 
	//operação básicas entre dois números onde os dois números e a operação 
	//desejada  deverão  ser  informados  pelo  usuário  e  ao  final  deverá  ser 
	//exibido o resultado da operação;  
	//• A  segunda  funcionalidade  será  informar  ao  usuário  a  quantidade  de 
	//números pares e ímpares em cinco números digitados pelo usuário;  
	//• A terceira funcionalidade deverá informar qual o maior e o menor número 
	//informado pelo usuário (o usuário deverá entrar com três números);  
	//• Caso  o  usuário  não  deseje  utilizar  nenhuma  funcionalidade,  deverá  ser 
	//informada a seguinte mensagem: “Obrigado por utilizar o aplicativo!”, e o 
	//algoritmo deverá ser encerrado.  
	funcao inicio()
	{
		inteiro opcaogeral
		escreva("Digite o código da operação \n 1- Calculadora \n 2- Descobrir a quantidade de Números Pares e Ímpares \n 3- Maior e menor número \n 4- Sair do aplicativo \n")
		leia(opcaogeral)
		escolha(opcaogeral){
			caso 1:
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
			pare
			caso 2:
				inteiro n1,n2,n3,n4,n5, impares = 0, pares = 0
				escreva("Digite 5 números qualquer (Inteiros): \n")
				leia(n1,n2,n3,n4,n5)
				se(n1%2==0){pares++}senao{impares++}
				se(n2%2==0){pares++}senao{impares++}
				se(n3%2==0){pares++}senao{impares++}
				se(n4%2==0){pares++}senao{impares++}
				se(n5%2==0){pares++}senao{impares++}
				escreva("Quantidade de impares: "+impares+" \n Quantidade de pares: "+pares)
			pare
			caso 3:
				inteiro number1, 
				number2, 
				number3, 
				maior,
				menor
				escreva("Digite 3 números qualquer (Inteiros): \n")
				leia(number1, number2, number3)
				se(number1 > number2){
					maior = number1
					menor = number2
				}senao{
					maior = number2	
					menor = number1
				}
				se(number3 > maior){
					maior = number3
				}senao{
					se(number3 < menor){
						menor = number3
					}
				}
				escreva("O maior número é: "+maior+"\n O menor número é: "+menor)
			pare
			caso contrario:
				escreva("Obrigado por utilizar o aplicativo!")
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 907; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */