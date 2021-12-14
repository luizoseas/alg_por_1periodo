programa
{
	inclua biblioteca Texto-->text
	inclua biblioteca Util-->util
	caracter tabuleiro[8][8], tabuleiroTemp[8][8], tabuleiroInverso[8][8],
	   ReiBlack='♔',
	   ReiWhite='♚',
	   RainhaBlack='♕',
	   RainhaWhite='♛',
	   CavaloBlack='♘',
	   CavaloWhite='♞',
	   BispoBlack='♗',
	   BispoWhite='♝',
	   TorreBlack='♖',
	   TorreWhite='♜',
	   PeaoBlack='♙',
	   PeaoWhite='♟',
	   Nada=' '
	cadeia PontuacaoBlack = ""
	cadeia PontuacaoWhite = ""
	caracter black[6] = {ReiBlack, RainhaBlack, CavaloBlack, BispoBlack,TorreBlack, PeaoBlack}
	caracter white[6] = {ReiWhite, RainhaWhite, CavaloWhite, BispoWhite,TorreWhite, PeaoWhite}
	funcao inicio(){
		enquanto(verdadeiro){
		Menu()
		}
	}
	inteiro round = 1
	logico iaativada = falso
	funcao incioRobo(){
		round = 1
		iaativada = verdadeiro
		logico jogo = verdadeiro
		gerarTabuleiro()
		mostrarTabuleiro()
		cadeia movimentoOrigem,movimentoDestino
		enquanto(jogo){
			se((round%2)==0){
				IA(black)
			}senao{
				Cheque()
				escreva("Peça de origem: \n")
				leia(movimentoOrigem)
				escreva("\nmm - Mostrar Movimentos da peça selecionada\n\nDestino: \n")
				leia(movimentoDestino)
				moverPeca(
					text.obter_caracter(movimentoOrigem, 0),
					text.obter_caracter(movimentoOrigem, 1),
					text.obter_caracter(movimentoDestino, 0),
					text.obter_caracter(movimentoDestino, 1)
				)
			}
			se(Finalizacao()){
				jogo = falso
			}senao{
				se((round%2)!=0){
					limpa()
					mostrarTabuleiro()
				}
			}
		}
		escreva("FIM DE JOGO")
	}
	funcao inicio2x2()
	{
		logico jogo = verdadeiro
		gerarTabuleiro()
		mostrarTabuleiro()
		cadeia movimentoOrigem,movimentoDestino
		enquanto(jogo){
			Cheque()
			escreva("Peça de origem \n")
			leia(movimentoOrigem)
			escreva("\nmm - Mostrar Movimentos da peça selecionada\n\nDestino: \n")
			leia(movimentoDestino)
			moverPeca(
				text.obter_caracter(movimentoOrigem, 0),
				text.obter_caracter(movimentoOrigem, 1),
				text.obter_caracter(movimentoDestino, 0),
				text.obter_caracter(movimentoDestino, 1)
			)
			se(Finalizacao()){
				jogo = falso
			}senao{
				limpa()
				mostrarTabuleiro()
			}
		}
		escreva("FIM DE JOGO")
	}
	funcao inverterTabuleiro(){
		para(inteiro i=0;i<8;i++){
			para(inteiro l=0;l<8;l++){
				tabuleiroInverso[i][l]=tabuleiro[i][l]
			}
		}	
		para(inteiro i=0;i<8;i++){
			para(inteiro l=0;l<8;l++){
				tabuleiro[i][l] = tabuleiroInverso[7-i][l]
			}
		}	
	}
	funcao gerarTabuleiro(){
		para(inteiro i=0;i<8;i++){
			para(inteiro l=0;l<8;l++){
				tabuleiro[i][l]=Nada
				se(i==1){
					tabuleiro[i][l]=PeaoBlack
				}
				se(i==6){
					tabuleiro[i][l]=PeaoWhite
				}
			}
		}
		tabuleiro[7][0]=TorreWhite
		tabuleiro[7][1]=CavaloWhite
		tabuleiro[7][2]=BispoWhite
		tabuleiro[7][3]=RainhaWhite
		tabuleiro[7][4]=ReiWhite
		tabuleiro[7][5]=BispoWhite
		tabuleiro[7][6]=CavaloWhite
		tabuleiro[7][7]=TorreWhite
		
		tabuleiro[0][0]=TorreBlack
		tabuleiro[0][1]=CavaloBlack
		tabuleiro[0][2]=BispoBlack
		tabuleiro[0][3]=RainhaBlack
		tabuleiro[0][4]=ReiBlack
		tabuleiro[0][5]=BispoBlack
		tabuleiro[0][6]=CavaloBlack
		tabuleiro[0][7]=TorreBlack
		
	}
	funcao moverPeca(caracter lOrigem,caracter nOrigem,caracter lDestino, caracter nDestino){
		inteiro Ocoluna = 9, Olinha = 9, Dcoluna = 9, Dlinha = 9
		se(verificarCaracter(lOrigem)){
			Olinha = verificarLocalizacao(lOrigem)
		}senao{
			Ocoluna = verificarLocalizacao(lOrigem)
		}
		se(verificarCaracter(nOrigem)){
			Olinha = verificarLocalizacao(nOrigem)
		}senao{
			Ocoluna = verificarLocalizacao(nOrigem)
		}

		se(verificarCaracter(lDestino)){
			Dlinha = verificarLocalizacao(lDestino)
		}senao{
			Dcoluna = verificarLocalizacao(lDestino)
		}
		se(verificarCaracter(nDestino)){
			Dlinha = verificarLocalizacao(nDestino)
		}senao{
			Dcoluna = verificarLocalizacao(nDestino)
		}
		se(lDestino == 'm' e nDestino == 'm'){
			verificarMovimentos(Olinha,Ocoluna)
		}senao se(Dcoluna == 9 ou Ocoluna == 9 ou Dlinha == 9 ou Olinha == 9){
			escreva("Entrada incorreta")
		}senao{
			mover(Olinha, Ocoluna, Dlinha, Dcoluna)
		}

	}
	funcao mover(inteiro Olinha,inteiro Ocoluna,inteiro Dlinha,inteiro Dcoluna){
		se(verificarMovimentacao(Olinha, Ocoluna, Dlinha, Dcoluna)){
			se(verificarCapturar(tabuleiro[Ocoluna][Olinha],tabuleiro[Dcoluna][Dlinha])){
				pontuacao(tabuleiro[Dcoluna][Dlinha])
			}
			se((tabuleiro[Ocoluna][Olinha] == TorreBlack e tabuleiro[Dcoluna][Dlinha] == ReiBlack) ou (tabuleiro[Ocoluna][Olinha] == TorreWhite e tabuleiro[Dcoluna][Dlinha] == ReiWhite)){
				se(Olinha < Olinha){
					tabuleiro[Dcoluna][Dlinha-1] = tabuleiro[Dcoluna][Dlinha]
				}senao{
					tabuleiro[Dcoluna][Dlinha+1] = tabuleiro[Dcoluna][Dlinha]
				}
			}
			tabuleiro[Dcoluna][Dlinha] = tabuleiro[Ocoluna][Olinha]
			tabuleiro[Ocoluna][Olinha] = ' '
			PeaoVira(Dcoluna,Dlinha)
			inverterTabuleiro()	
			round++
		}senao{
			escreva("movimento incorreto")	
		}
	} 
	funcao logico verificarCapturar(caracter peaoTimeA, caracter PeaoTimeB){
		logico retorno = falso
		se((QualTime(peaoTimeA) == 'W') e (QualTime(PeaoTimeB) == 'B')){
			retorno = verdadeiro
		}
		se((QualTime(PeaoTimeB) == 'W') e (QualTime(peaoTimeA) == 'B')){
			retorno = verdadeiro
		}
		retorne retorno
	}
	funcao verificarMovimentos(inteiro lOrigem,inteiro nOrigem){
		para(inteiro i=0;i<8;i++){
			para(inteiro l=0;l<8;l++){
				tabuleiroTemp[i][l]=tabuleiro[i][l]
				se(verificarMovimentacao(lOrigem,nOrigem,l,i)){
					se(tabuleiro[i][l] != Nada){
						tabuleiroTemp[i][l]='X'	
					}senao{
						tabuleiroTemp[i][l]='O'
					}
				}
			}
		}
		escreva("\n    h   g   f   e   d   c   b   a")
		escreva("\n  _________________________________\n")
		para(inteiro i=0;i<8;i++){
			escreva((i+1)+" |")
			para(inteiro l=0;l<8;l++){
				escreva(" "+tabuleiroTemp[i][l]+" |")
			}
			escreva(" "+(i+1))
			escreva("\n  ---------------------------------\n")
		}
		escreva("    h   g   f   e   d   c   b   a")
		escreva("\n\nAguarde 5 segundos")
		util.aguarde(5000)
		
	}
	funcao logico verificarMovimentacao(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico retorno = falso
		// Movimentos Peão
		se(tabuleiro[Linha_Origem][Coluna_Origem] == PeaoBlack ou tabuleiro[Linha_Origem][Coluna_Origem] == PeaoWhite){
			retorno = Peao(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino)
		}
		// Movimentos Torre
		se(tabuleiro[Linha_Origem][Coluna_Origem] == TorreBlack ou tabuleiro[Linha_Origem][Coluna_Origem] == TorreWhite){
			se(Torre(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino) ou Roque(Linha_Origem,Coluna_Origem,Linha_Destino,Coluna_Destino)){
				retorno = verdadeiro
			}
		}
		//Movimentos Bispo
		se(tabuleiro[Linha_Origem][Coluna_Origem] == BispoWhite ou tabuleiro[Linha_Origem][Coluna_Origem] == BispoBlack){
			retorno = Bispo(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino)
		}
		//Movimentos Rainha
		se(tabuleiro[Linha_Origem][Coluna_Origem] == RainhaWhite ou tabuleiro[Linha_Origem][Coluna_Origem] == RainhaBlack){
			retorno = Rainha(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino)
		}
		//Movimentos Rei
		se(tabuleiro[Linha_Origem][Coluna_Origem] == ReiWhite ou tabuleiro[Linha_Origem][Coluna_Origem] == ReiBlack){
			retorno = Rei(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino)
		}
		//Movimentos Cavalo
		se(tabuleiro[Linha_Origem][Coluna_Origem] == CavaloWhite ou tabuleiro[Linha_Origem][Coluna_Origem] == CavaloBlack){
			retorno = Cavalo(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino)
		}
		retorne retorno
	}
	funcao logico verificarCaracter(caracter valor){
		logico retorno
		escolha(valor){
			caso 'a':
				retorno = verdadeiro
			pare
			caso 'b':
				retorno =  verdadeiro
			pare
			caso 'c':
				retorno =  verdadeiro
			pare
			caso 'd':
				retorno =  verdadeiro
			pare
			caso 'e':
				retorno =  verdadeiro
			pare
			caso 'f':
				retorno =  verdadeiro
			pare
			caso 'g':
				retorno =  verdadeiro
			pare
			caso 'h':
				retorno =  verdadeiro
			pare
			caso '1':
				retorno =  falso
			pare
			caso '2':
				retorno =  falso
			pare
			caso '3':
				retorno =  falso
			pare
			caso '4':
				retorno =  falso
			pare
			caso '5':
				retorno =  falso
			pare
			caso '6':
				retorno =  falso
			pare
			caso '7':
				retorno =  falso
			pare
			caso '8':
				retorno =  falso
			pare
			caso contrario:
				retorno =  falso
		}	
		retorne retorno
	}
	funcao inteiro verificarLocalizacao(caracter valor){
		inteiro retorno
		escolha(valor){
			caso 'a':
				retorno = 7
			pare
			caso 'b':
				retorno = 6
			pare
			caso 'c':
				retorno = 5
			pare
			caso 'd':
				retorno = 4
			pare
			caso 'e':
				retorno = 3
			pare
			caso 'f':
				retorno = 2
			pare
			caso 'g':
				retorno = 1
			pare
			caso 'h':
				retorno = 0
			pare
			caso '1':
				retorno = 0
			pare
			caso '2':
				retorno = 1
			pare
			caso '3':
				retorno = 2
			pare
			caso '4':
				retorno = 3
			pare
			caso '5':
				retorno = 4
			pare
			caso '6':
				retorno = 5
			pare
			caso '7':
				retorno = 6
			pare
			caso '8':
				retorno = 7
			pare
			caso contrario:
				retorno = 9
		}	
		retorne retorno
	}
	funcao mostrarTabuleiro(){
		escreva("\n    h   g   f   e   d   c   b   a")
		escreva("\n  _________________________________\n")
		para(inteiro i=0;i<8;i++){
			escreva((i+1)+" |")
			para(inteiro l=0;l<8;l++){
				escreva(" "+tabuleiro[i][l]+" |")
			}
			escreva(" "+(i+1))
			se(i==2){
			escreva("\tPONTUAÇÃO BRANCO: ",PontuacaoBlack)
			}
			se(i==4){
			escreva("\tPONTUAÇÃO PRETO: ",PontuacaoWhite)
			}
			se(i==6){
			escreva("\tTOTAL MOVIMENTAÇÕES: ",round)
			}
			escreva("\n  ---------------------------------\n")
		}
		escreva("    h   g   f   e   d   c   b   a")
		escreva("\n\n")
	}
	funcao pontuacao(caracter peca){
		se(QualTime(peca) == 'B'){
			PontuacaoBlack += peca+ " "
		}
		se(QualTime(peca) == 'W'){
			PontuacaoWhite += peca+ " "
		}
	}
	funcao logico Peao(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico retorno = falso
		se((Linha_Destino == Linha_Origem-2 ou Linha_Destino == Linha_Origem-1) e Coluna_Destino == Coluna_Origem){
			se(Linha_Origem != 6 e Linha_Destino == Linha_Origem-1){
				retorno = verdadeiro
			}senao se(Linha_Origem == 6){
				retorno = verdadeiro
			}
			se(tabuleiro[Linha_Destino][Coluna_Destino] != Nada){
				retorno = falso
			}
		}
		se(tabuleiro[Linha_Destino][Coluna_Destino] != Nada e ((Linha_Origem-1)==Linha_Destino e 
		((Coluna_Origem+1)==Coluna_Destino ou (Coluna_Origem-1)==Coluna_Destino)) ){
			se(verificarCapturar(tabuleiro[Linha_Destino][Coluna_Destino],
				tabuleiro[Linha_Origem][Coluna_Origem])){
					retorno = verdadeiro		
			}
		}
		
		retorne retorno
	}
	funcao logico Torre(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico condition = falso, execute = falso, retorno = falso
		// Movimento Vertical
		se(Linha_Origem == Linha_Destino e Coluna_Origem != Coluna_Destino){
			execute = verdadeiro
			se(Coluna_Origem > Coluna_Destino){
				para(inteiro l=Coluna_Origem-1;l>=Coluna_Destino;l--){			
					se(tabuleiro[Linha_Origem][l] != Nada){
						condition	= verdadeiro
						se(verificarCapturar(tabuleiro[Linha_Origem][l],tabuleiro[Linha_Origem][Coluna_Origem])){
							se(l == Coluna_Destino){
								condition	= falso
							}
						}
						l=Coluna_Destino-1
					}
				}
			}senao{
				para(inteiro l=Coluna_Origem+1;l<=Coluna_Destino;l++){
					se(tabuleiro[Linha_Origem][l] != Nada){
						condition	= verdadeiro
						se(verificarCapturar(tabuleiro[Linha_Origem][l],tabuleiro[Linha_Origem][Coluna_Origem])){
							se(l == Coluna_Destino){
								condition	= falso
							}
						}
						l=Coluna_Destino+1
					}
				}
			}
		}
		//Movimentos Horizontais
		se(Coluna_Origem == Coluna_Destino e Linha_Origem != Linha_Destino){
			execute = verdadeiro
			se(Linha_Origem > Linha_Destino){
				para(inteiro l=Linha_Origem-1;l>=Linha_Destino;l--){	
					se(tabuleiro[l][Coluna_Origem] != Nada){
						condition	= verdadeiro
						se(verificarCapturar(tabuleiro[l][Coluna_Origem],tabuleiro[Linha_Origem][Coluna_Origem])){
							se(l == Linha_Destino){
								condition	= falso
							}
						}				
						l=Linha_Destino-1
					}
				}
			}senao{
				para(inteiro l=Linha_Origem+1;l<=Linha_Destino;l++){
					se(tabuleiro[l][Coluna_Origem] != Nada){
						condition	= verdadeiro
						se(verificarCapturar(tabuleiro[l][Coluna_Origem],tabuleiro[Linha_Origem][Coluna_Origem])){
							se(l == Linha_Destino){
								condition	= falso
							}
						}
						l=Linha_Destino+1
					}
				}
			}
		}
		se(execute){
			se(nao condition){
				retorno = verdadeiro
			}
		}
		retorne retorno
	}
	funcao logico Bispo(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico retorno = falso, edecomer = falso, execute = falso
		inteiro coluna_parametro = -100, linha_parametro = -100, temalgonocaminho = 0, total_linha
	
		para(inteiro REP = 1;REP<8;REP++){	//VERIFICAR SE A POSIÇÃO DE DESTINO É COMPATIVEL COM A MOVIMENTAÇÃO DE ORIGEM
			se(Linha_Destino+REP < 8 e Coluna_Destino+REP < 8 e Linha_Destino+REP == Linha_Origem e Coluna_Destino+REP == Coluna_Origem ou
			   Linha_Destino-REP < 8 e Coluna_Destino-REP < 8 e Linha_Destino-REP == Linha_Origem e Coluna_Destino-REP == Coluna_Origem ou
			   Linha_Destino+REP < 8 e Coluna_Destino-REP < 8 e Linha_Destino+REP == Linha_Origem e Coluna_Destino-REP == Coluna_Origem ou
			   Linha_Destino-REP < 8 e Coluna_Destino+REP < 8 e Linha_Destino-REP == Linha_Origem e Coluna_Destino+REP == Coluna_Origem){ 
				coluna_parametro = Coluna_Origem - Coluna_Destino
				linha_parametro = Linha_Origem - Linha_Destino
				retorno = verdadeiro
			}
		}
		se(coluna_parametro != -100 e linha_parametro != -100){
			se(coluna_parametro >= 0 e linha_parametro >= 0){
				para(inteiro l = 1;l <= linha_parametro;l++){
					se(tabuleiro[Linha_Origem-l][Coluna_Origem-l] !=Nada){
						se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Origem-l][Coluna_Origem-l])){
							edecomer = verdadeiro
						}
						temalgonocaminho ++
					}
				}
			}
			se(coluna_parametro>= 0 e linha_parametro < 0){
				para(inteiro l = 1;l <= -linha_parametro;l++){
					se(tabuleiro[Linha_Origem+l][Coluna_Origem-l] !=Nada){
						se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Origem+l][Coluna_Origem-l])){
							edecomer = verdadeiro
						}
						temalgonocaminho ++
					}
				}
				
			}
			se(coluna_parametro< 0 e linha_parametro >= 0){
				para(inteiro l = 1;l <= -coluna_parametro;l++){
					se(tabuleiro[Linha_Origem-l][Coluna_Origem+l] !=Nada){
						se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Origem-l][Coluna_Origem+l])){
							edecomer = verdadeiro
						}
						temalgonocaminho ++
					}
				}
				
			}
			se(coluna_parametro < 0 e linha_parametro < 0){
				para(inteiro l = 1;l <= -linha_parametro;l++){
					se(tabuleiro[Linha_Origem+l][Coluna_Origem+l] !=Nada){
						se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Origem+l][Coluna_Origem+l])){
							edecomer = verdadeiro
						}
						temalgonocaminho ++
					}
				}
				
			}
		}
		se(temalgonocaminho > 0){
			se(temalgonocaminho < 2){
				se(edecomer){
					retorne verdadeiro		
				}
			}
			retorne falso
		}
		retorne retorno
	}
	funcao logico Rainha(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico retorno = falso
		se(Bispo(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino) ou Torre(Coluna_Origem,Linha_Origem,Coluna_Destino,Linha_Destino)){
			retorno = verdadeiro	
		}
		retorne retorno
	}
	funcao logico Cavalo(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico retorno = falso
		se(((Linha_Origem - Linha_Destino) == 2 ou (Linha_Origem - Linha_Destino) == -2) e ((Coluna_Destino == Coluna_Origem+1) ou (Coluna_Destino == Coluna_Origem-1))){
			se(tabuleiro[Linha_Destino][Coluna_Destino] != Nada){
				se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Destino][Coluna_Destino])){
					retorno = verdadeiro	
				}
			}senao{
				retorno = verdadeiro	
			}
		}
		se(((Coluna_Origem - Coluna_Destino) == 2 ou (Coluna_Origem - Coluna_Destino) == -2) e ((Linha_Destino == Linha_Origem+1) ou (Linha_Destino == Linha_Origem-1))){
			se(tabuleiro[Linha_Destino][Coluna_Destino] != Nada){
				se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Destino][Coluna_Destino])){
					retorno = verdadeiro	
				}
			}senao{
				retorno = verdadeiro	
			}
		}
		retorne retorno
	}
	funcao logico Rei(inteiro Coluna_Origem,inteiro Linha_Origem,inteiro Coluna_Destino, inteiro Linha_Destino){
		logico retorno = falso
		se((Coluna_Origem - Coluna_Destino) == 1 e (Linha_Origem - Linha_Destino) == 1 ou
		   (Coluna_Origem - Coluna_Destino) == 0 e (Linha_Origem - Linha_Destino) == 1 ou
		   (Coluna_Origem - Coluna_Destino) == 1 e (Linha_Origem - Linha_Destino) == 0 ou
		   (Coluna_Origem - Coluna_Destino) == -1 e (Linha_Origem - Linha_Destino) == -1 ou
		   (Coluna_Origem - Coluna_Destino) == 0 e (Linha_Origem - Linha_Destino) == -1 ou
		   (Coluna_Origem - Coluna_Destino) == -1 e (Linha_Origem - Linha_Destino) == 0 ou
		   (Coluna_Origem - Coluna_Destino) == -1 e (Linha_Origem - Linha_Destino) == 1 ou
		   (Coluna_Origem - Coluna_Destino) == 1 e (Linha_Origem - Linha_Destino) == -1  
		){
			se(tabuleiro[Linha_Destino][Coluna_Destino] != Nada){
				se(verificarCapturar(tabuleiro[Linha_Origem][Coluna_Origem],tabuleiro[Linha_Destino][Coluna_Destino])){
					retorno = verdadeiro	
				}
			}senao{
				retorno = verdadeiro	
			}
		}
		retorne retorno
	}
	funcao caracter QualTime(caracter peca){
		caracter retorno = 'N'
		para(inteiro rep = 0; rep < 6;rep++)
		{
			se(black[rep] == peca){
				retorno = 'B'
			}	
			se(white[rep] == peca){
				retorno = 'W'
			}	
		}
		retorne retorno	
	}
	funcao logico Roque_verificar(inteiro Linha_Origem, inteiro Coluna_Origem, inteiro Linha_Destino, inteiro Coluna_Destino){
		logico retorno = falso, execute = falso, codition = verdadeiro
		se(Linha_Origem == Linha_Destino e Coluna_Origem != Coluna_Destino){
			se(Coluna_Origem > Coluna_Destino){
				para(inteiro l=Coluna_Origem-1;l>=Coluna_Destino;l--){			
					se(tabuleiro[Linha_Origem][l] != Nada){
						se(codition){
							se(tabuleiro[Linha_Origem][l] == ReiBlack ou tabuleiro[Linha_Origem][l] == ReiWhite){
								retorno = verdadeiro	
							}senao{
								codition = falso
							}
						}
					}
				}
			}senao{
				para(inteiro l=Coluna_Origem+1;l<=Coluna_Destino;l++){
					se(tabuleiro[Linha_Origem][l] != Nada){
						se(codition){
							se(tabuleiro[Linha_Origem][l] == ReiBlack ou tabuleiro[Linha_Origem][l] == ReiWhite){
								retorno = verdadeiro	
							}senao{
								codition = falso
							}
						}
					}
				}
			}
		}
		retorne retorno
	}
	funcao logico Roque(inteiro Linha_Origem, inteiro Coluna_Origem, inteiro Linha_Destino, inteiro Coluna_Destino){
		logico retorno = falso
		se(tabuleiro[Linha_Destino][Coluna_Destino] == ReiBlack ou tabuleiro[Linha_Destino][Coluna_Destino] == ReiWhite){
			se((tabuleiro[7][0] == TorreBlack e tabuleiro[7][4] == ReiBlack) ou (tabuleiro[7][0] == TorreWhite e tabuleiro[7][4] == ReiWhite)){
				retorno = Roque_verificar(Linha_Origem,Coluna_Origem,Linha_Destino,Coluna_Destino)
			}
			se((tabuleiro[7][7] == TorreBlack e tabuleiro[7][4] == ReiBlack) ou (tabuleiro[7][7] == TorreWhite e tabuleiro[7][4] == ReiWhite)){
				//retorno = verdadeiro
				retorno = Roque_verificar(Linha_Origem,Coluna_Origem,Linha_Destino,Coluna_Destino)
			}
		}
		retorne retorno
	}
	funcao logico PeaoComeDeCosta(){
		retorne falso
	}
	funcao Creditos(){
		limpa()
		escreva("\n")
		escreva("\n  ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚")
		para(inteiro i=0;i<9;i++){
			se(i==2){
				escreva("\n  ♔          COLABORADORES          ♚")
			}senao se(i==4){
				escreva("\n  ♔  1. LUIZ OSÉAS          - UTFPR ♚")
			}senao se(i==6){
				escreva("\n  ♔  2. WINICIUS DOS PASSOS - UTPFR ♚")
			}senao{
				escreva("\n  ♔                                 ♚")
			}
		}
		escreva("\n  ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔\n")
		escreva("\n\nAguarde 5 segundos.")
		util.aguarde(5000)
		limpa()
	}
	funcao Menu(){
		inteiro op
		escreva("\n")
		escreva("\n  ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚")
		para(inteiro i=0;i<8;i++){
			se(i==0){
				escreva("\n  ♔             XADREZ            ♚")
			}senao se(i==2){
				escreva("\n  ♔     (1) - JOGAR COM 1vs1      ♚")
			}senao se(i==4){
				escreva("\n  ♔  (2) - JOGAR COM COMPUTADOR   ♚")
			}senao se(i==6){
				escreva("\n  ♔        (3) - CRÉDITOS         ♚")
			}senao{
				escreva("\n  ♔                               ♚")
			}
		}
		escreva("\n  ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔\n")
		escreva("\n\nEscolha uma Opção: ")
		leia(op)
		escolha(op){
			caso 1:
				inicio2x2()
			pare	
			caso 2:
				incioRobo()
			pare
			caso 3:
				Creditos()
			caso contrario:
			
		}
	}
	funcao logico Finalizacao(){
		logico retorno = falso
		inteiro rei = 0
		para(inteiro z=0;z<8;z++){
			para(inteiro x=0;x<8;x++){
				se(tabuleiro[z][x] == ReiWhite){
					rei++
				}
				se(tabuleiro[z][x] == ReiBlack){
					rei++
				}
			}
		}
		se(rei != 2){
			retorno = verdadeiro	
		}
		retorne retorno
	}
	funcao Cheque(){
		logico retorno = falso
		para(inteiro z=0;z<8;z++){
			para(inteiro x=0;x<8;x++){
				se(tabuleiro[z][x] == ReiBlack ou tabuleiro[z][x] == ReiWhite){
					para(inteiro i=0;i<8;i++){
						para(inteiro l=0;l<8;l++){
							se(verificarMovimentacao(i,l,x,z)){
								se(verificarCapturar(tabuleiro[l][i],tabuleiro[z][x])){
									retorno = verdadeiro
								}
							}
						}
					}
				}
			}
		}
		se(retorno){
			escreva("Cheque \n")	
		}
	}
	funcao PeaoVira(inteiro Linha_Destino, inteiro Coluna_Destino){
		logico rep = verdadeiro
		logico rodar = verdadeiro
		se(iaativada){
			se((round%2)==0){
				rodar = falso
			}	
		}
		se(rodar){
			se(Linha_Destino == 0 e (tabuleiro[Linha_Destino][Coluna_Destino] == PeaoWhite ou tabuleiro[Linha_Destino][Coluna_Destino] == PeaoBlack)){
				enquanto(rep){
					caracter time = QualTime(tabuleiro[Linha_Destino][Coluna_Destino])
					escreva("\n  ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚ ♚")
					escreva("\n  ♔     ESCOLHA UMA PEÇA      ♔")
					escreva("\n  ♔  1- TORRE                 ♔")
					escreva("\n  ♔  2- RAINHA                ♔")
					escreva("\n  ♔  3- BISPO                 ♔")
					escreva("\n  ♔  4- CAVALO                ♔")
					escreva("\n  ♔                           ♔")
					escreva("\n  ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔ ♔\nDigite o número da opção: ")
					inteiro op
					leia(op)
					escolha(op){
						caso 1:
							se('W' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = TorreWhite
							}senao se('B' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = TorreBlack
							}
							rep= falso
						pare
						caso 2:
							se('W' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = RainhaWhite
							}senao se('B' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = RainhaBlack
							}
							rep= falso
						pare
						caso 3:
							se('W' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = BispoWhite
							}senao se('B' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = BispoBlack
							}
							rep= falso
						pare
						caso 4:
							se('W' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = CavaloWhite
							}senao se('B' == time){
								tabuleiro[Linha_Destino][Coluna_Destino] = CavaloBlack
							}
							rep= falso
						pare	
						caso contrario:
							escreva("Opção não encontrada")
							rep = verdadeiro
							
					}
				}
			}
		}
	}
	funcao IA(caracter Time[]){ //INTELIGÊNCIA ARTIFICIAL
		      //Olinha - Ocoluna | Dlinha - Dcoluna
		inteiro mov[64][4]
		inteiro linha = 0
		para(inteiro l1=0;l1<8;l1++){
			para(inteiro c1=0;c1<8;c1++){
				para(inteiro rep = 0;rep<6;rep++){
					se(Time[rep] == tabuleiro[l1][c1]){
						para(inteiro l2=0;l2<8;l2++){
							para(inteiro c2=0;c2<8;c2++){
								se(verificarMovimentacao(c1,l1,c2,l2)){
									mov[linha][0] = l1
									mov[linha][1] = c1
									mov[linha][2] = l2
									mov[linha][3] = c2
									linha++
									//util.sorteia(minimo, maximo)
									
									//escreva(tabuleiro[l1][c1],"|",l1,"|",c1,"\n")
								}
							}
						}
					}
				}
			}
		}
		inteiro aleatorio = util.sorteia(0, linha)
		mover(mov[aleatorio][1],
			mov[aleatorio][0],
			mov[aleatorio][3],
			mov[aleatorio][2]
		)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2584; 
 * @DOBRAMENTO-CODIGO = [23, 90, 186, 224, 254, 310, 389, 397, 419, 486, 555, 562, 584, 605, 618, 649, 662, 718, 736];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */