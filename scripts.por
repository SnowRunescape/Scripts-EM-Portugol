programa
{
	funcao inicio()
	{
		//atividade1()
		//atividade2()
		//atividade3()
		//atividade4()
		//atividade5()
		atividade6()
	}

	funcao atividade1()
	{
		inteiro vetor[12] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23}

		inteiro valorX = vetor[sorteia(0, 9)]
		inteiro valorY = vetor[sorteia(0, 9)]

		inteiro somaValor = valorX + valorY
		
		escreva("A soma dos valores " + valorX + " e " + valorY + " é " + somaValor + ".")
	}

	funcao atividade2()
	{
		inteiro vetor[10]

		inteiro numero = 0

		para (inteiro contador = 0; contador < 10; contador++) {
			logico numeroImpar = falso
			
			enquanto (numeroImpar != verdadeiro) {
				se ((numero % 2) == 1) {
					numeroImpar = verdadeiro
					
					vetor[contador] = numero
				}

				numero++
			}
		}

		para (inteiro contador = 0; contador < 10; contador++) {
			escreva( "Vetor[" + (contador + 1) + "] tem o valor de " + vetor[contador] + ".\n")
		}
	}

	funcao atividade3()
	{
		inteiro vetorInicial[16] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31}
		inteiro vetorFinal[16]

		para (inteiro contador = 0; contador < 16; contador++) {
			se (contador < 8) {
				vetorFinal[contador] = vetorInicial[contador + 8]
			} senao {
				vetorFinal[contador] = vetorInicial[contador - 8]
			}
			
			
		}

		para (inteiro contador = 0; contador < 16; contador++) {
			escreva( "Vetor[" + (contador + 1) + "] tem o valor de " + vetorFinal[contador] + ".\n")
		}
	}

	funcao atividade4()
	{
		inteiro vetor[20] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39}

		inteiro valorX = sorteia(0, 39)
		inteiro posicaoValorX = 0

		logico existe = falso
		
		para (inteiro posicao = 0; posicao < 20; posicao++) {
			se (vetor[posicao] == valorX) {
				existe = verdadeiro
				posicaoValorX = posicao
			}
		}

		se (existe) {
			escreva("O valor " + valorX + " encontra-se no vetor na posição " + posicaoValorX)
		} senao {
			escreva("O valor " + valorX + " não existe no vetor.")
		}
	}

	funcao atividade5()
	{
		inteiro matriz[10][10]
		
		inteiro maiorValor = 0

		inteiro linhaMaiorValor = 0
		inteiro colunaMaiorValor = 0

		// GERANDO MATRIZ E LOCALIZANDO O MAIOR VALOR DINAMICAMENTE
		
		para (inteiro linha = 0; linha < 10; linha++) {
			para (inteiro coluna = 0; coluna < 10; coluna++) {
				inteiro valor = sorteia(1, 1000)
				
				matriz[linha][coluna] = valor

				se (valor > maiorValor) {
					maiorValor = valor
					
					linhaMaiorValor = linha
					colunaMaiorValor = coluna
				}
			}
		}

		escreva("O maior valor na matriz é " + maiorValor + " e encontra-se na posição [" + linhaMaiorValor + ", " + colunaMaiorValor + "].")
	}

	funcao atividade6()
	{
		inteiro matriz[20][20]

		inteiro localizarValor = 50

		inteiro linhaValorLocalizado = 0
		inteiro colunaValorLocalizado = 0

		logico valorEncontrado = falso

		// GERANDO MATRIZ E LOCALIZANDO O VALOR DINAMICAMENTE
		
		para (inteiro linha = 0; linha < 20; linha++) {
			para (inteiro coluna = 0; coluna < 20; coluna++) {
				inteiro valor = sorteia(1, 1000)
				
				matriz[linha][coluna] = valor

				se (valor == localizarValor) {
					valorEncontrado = verdadeiro
					linhaValorLocalizado = linha
					colunaValorLocalizado = coluna
				}
			}
		}

		se (valorEncontrado) {
			escreva("O valor " + localizarValor + " está localizado na posição [" + linhaValorLocalizado + ", " + colunaValorLocalizado + "].")
		} senao {
			escreva("O valor " + localizarValor + " não existe na matriz.")
		}
	}
}