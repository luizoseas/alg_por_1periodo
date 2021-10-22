programa
{
	//Um banco concedera um crédito especial aos seus clientes, o valor do crédito 
	//para  cada  cliente  será  estipulado  mediante  um  código  atribuído  quando  foi 
	//realizada a abertura de sua conta. Faça um aplicativo que leia o nome, o salário 
	//mensal  e  o  código  dos  clientes  e  calcule  o  valor  do  crédito  de  acordo  com  a 
	//tabela abaixo:
	funcao inicio()
	{
		cadeia nome
		inteiro codigo
		cadeia resultado = ""
		real salario
		escreva("Digite o nome do cliente: ")
		leia(nome)
		escreva("Digite o salário do cliente: R$ ")
		leia(salario)
		escreva("Digite o código do cliente")
		leia(codigo)
		escolha(codigo){

			caso 1: 
				resultado += ((salario*20)/100)
			pare
			caso 2: 
				resultado += ((salario*30)/100)
			pare
			caso 3: 
				resultado += ((salario*40)/100)
			pare
			caso 4: 
				resultado += ((salario*60)/100)
			pare
			caso contrario: 
				resultado = "Código não encontrado!"
			pare
		}
		escreva("================\n CLIENTE: "+nome+"\n SALÁRIO: R$ "+salario+"\n Crédito Pessoal: "+resultado+"\n================")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 662; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */