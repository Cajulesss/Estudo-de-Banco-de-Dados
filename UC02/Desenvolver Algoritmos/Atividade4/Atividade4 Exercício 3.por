programa
{
/*Retome o Algoritmo 3 da Atividade 3. Aplique no código a biblioteca
“Texto” de Portugol para permitir que o usuário pesquise por parte do
nome do hóspede, ao invés do nome exato. Veja abaixo um exemplo de
como usar a função “posicao_texto()” da biblioteca.
programa
{
inclua biblioteca Texto --> tx
funcao inicio()
{
cadeia meutexto = "arara rara voa no ceu"
inteiro pos = tx.posicao_texto("rara", meutexto, 0)
se(pos < 0)
escreva("texto não encontrado")
senao
escreva("texto encontrado na posicao ", pos)
}
}*/
	
inclua biblioteca Texto --> biblioTx
	funcao inicio()
	{
		//Criação do menu:
		inteiro contador = 0,opcao = 1
		cadeia nomeUsuario = "", sair = "", totalCadastros [15]

		//Cadastros loop

		enquanto(opcao != 3){
			
			
			
			escreva("Escolha a operação:\n")
			escreva("1-Cadastrar\n")
			escreva("2-Pesquisar\n")
			escreva("3-Sair\n")
			leia(opcao)

		se(opcao == 1) //Parte do cadastro
		{

			se(contador < 15)
			{
				cadeia nome
				escreva("Por gentileza digite o nome do hóspede que deseja cadastrar: ")
				leia(nome)
				totalCadastros[contador] = nome
				contador++
			}
			se(contador == 15)
			{
				escreva("Máximo de cadastros atingidos!")
			}

		}
		se(opcao == 2)
		{
				cadeia nome
				escreva("Digite o nome do hóspede que deseja encontrar no sistema:")
				leia(nome)

				/*A opção “pesquisar” deve permitir que o
usuário informe um nome e, caso seja encontrado um nome exatamente
igual, mostre a mensagem “Hospede (nome) foi encontrado no índice
(índice onde foi cadastrado)*/
				
				logico encontrou = falso
				
				para(inteiro i = 0; i < contador; i++) {
                se(biblioTx.posicao_texto(nome, totalCadastros[i],0) >= 0) {
                    escreva("Hóspede: ", totalCadastros[i], " encontrado no índice ", i, "\n")
                    encontrou = verdadeiro
                }
            }

            se(encontrou == falso) {
                escreva("Hóspede ", nome, " não cadastrado!\n")
            }

        	}

   		}//chave do loop
	}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2023; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */