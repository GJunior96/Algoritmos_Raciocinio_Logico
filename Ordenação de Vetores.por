programa
{
	/*
	 * Algorítmo de preenchimento e ordenação de 3 vetores 
	 * Desenvolvido para trilha 04 da disciplina de Raciocínio Lógico
	 * 08/06/2020
	 * Criado por Gilberto Júnior Almada
	 * Desenvolvido no Software Portugol Studio
	 */
	
	inteiro a [5], b[5], c[10], z
	
	funcao inicio()
	{
		z = 0

		// Preenchendo o 1º Vetor
		para (inteiro i = 0; i <= 4; i ++)
		{
			escreva("Digito o ",i + 1,"º valor: ")
			leia(a[i])

			// Ordenando Valores do menor para o maior
			se (i > 0)
			{
				para (inteiro j = 0; j <= i; j ++)
				{
					se (a[i] < a[j])
					{
						z = a[i]
						a[i] = a[j]
						a[j] = z
					}
				}
			}
		}

		// Preenchendo o 2º Vetor
		para (inteiro i = 0; i <= 4; i ++)
		{
			escreva("Digito o ",i + 6,"º valor: ")
			leia(b[i])

			// Ordenando Valores do menor para o maior
			se (i > 0)
			{
				para (inteiro j = 0; j <= i; j ++)
				{
					se (b[i] < b[j])
					{
						z = b[i]
						b[i] = b[j]
						b[j] = z
					}
				}
			}
		}

		// Preenchendo o 3º Vetor com os valores recebidos dos dois primeiros
		para (inteiro i = 0; i <= 9; i++)
		{
			se (i <= 4)
			{
				c[i] = a[i]	
			}
			senao
			{
				c[i] = b[i - 5]
			}
			
		}

		// Ordenando Valores do menor para o maior
		para (inteiro i = 0; i <= 9; i++)
		{
			para (inteiro j = 0; j <= i; j++)
			{
				se (c[i] < c[j])
				{
					z = c[i]
					c[i] = c[j]
					c[j] = z
				}
			}
		}

		// Mostrando valores, em ordem crescente, do 3º Vetor para o usuário
		escreva("Os valores digitados, ordenados em forma crescente, são:\n")
		para (inteiro i = 0; i <= 9; i++)
		{
			escreva(i + 1,"º Valor: ",c[i],"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */