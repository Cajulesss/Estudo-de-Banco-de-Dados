programa
{
	/* 2-Escreva um algoritmo que receba os nomes e sexos de 5 hóspedes.
	Depois disso, mostre, separadamente, primeiro todos os nomes dos
	hóspedes do sexo feminino e depois todos os nomes das hóspedes do
	sexo masculino.*/
	funcao inicio()
	{
		// Criar variáveis de nome e gênero
		inteiro contador = 0
		cadeia nomeUsuario, generoUsuario

		// vetor de sexo masculino e feminino
		cadeia NomeHospedePorSexoFeminino  [5]
		cadeia NomeHospedePorSexoMasculino  [5]

		para(contador = 0; contador < 5; contador++){
			escreva("Por gentileza digite seu nome:")
			leia(nomeUsuario)

			escreva("Só mais um detalhe, digite seu gênero: (masculino/feminino)")
			leia(generoUsuario)

			se(generoUsuario == "feminino"){
				NomeHospedePorSexoFeminino[contador] = nomeUsuario
			} senao {
				NomeHospedePorSexoMasculino[contador] = nomeUsuario
			}
		}

		//Hóspedes femininas:
		escreva("Nome das hóspedes femininas:")
		para (inteiro f = 0; f < 5; f++) {
			se (NomeHospedePorSexoFeminino[f] != "") {
				escreva(NomeHospedePorSexoFeminino[f] + " ")
			}
		}

		//Hóspedes masculinos:
		escreva("\nNome dos hóspedes masculinos:")
		para (inteiro m = 0; m < 5; m++) {
			se (NomeHospedePorSexoMasculino[m] != "") {
				escreva(NomeHospedePorSexoMasculino[m] + " ")
			}
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */