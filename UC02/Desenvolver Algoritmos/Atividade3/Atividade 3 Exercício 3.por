programa
{
/*Monte um algoritmo em que o usuário poderá cadastrar e pesquisar
hóspedes. O algoritmo deve oferecer um menu com três opções ao
usuário: 1- cadastrar; 2- pesquisar; 3- sair. A opção “cadastrar” deve
permitir que o usuário informe um nome de hóspede, gravando-o em
memória (máximo de 15 cadastros; caso atinja essa quantidade, mostre
“Máximo de cadastros atingido”). A opção “pesquisar” deve permitir que o
usuário informe um nome e, caso seja encontrado um nome exatamente
igual, mostre a mensagem “Hospede (nome) foi encontrado no índice
(índice onde foi cadastrado)”. Se o nome não foi encontrado mostre
“Hóspede não encontrado”. O algoritmo deve permitir que o usuário
realize essas operações repetidas vezes, até que use a opção “3”, que
encerra o algoritmo.*/

//Posso criar métodos para o menu, porém vou fazer de maneira tradicional
	funcao inicio()
	{
		//Criação do menu:
		inteiro contador = 1,opcao = 1
		cadeia nomeUsuario = "", sair = "", totalCadastros [15]

		//Cadastros loop

		enquanto(opcao != 3){
			contador++
			
			
			escreva("Escolha a operação:\n")
			escreva("1-Cadastrar\n")
			escreva("2-Pesquisar\n")
			escreva("3-Sair\n")
			leia(opcao)

		se(opcao == 1) //Parte do cadastro
		{

			se()
			{
				
			}



			
			cadeia nome
			escreva("Por gentileza digite o nome do hóspede que deseja cadastrar: ")
			leia(nome)
			
		} se(opcao == 2){
				cadeia nome
				escreva("Digite o nome do hóspede que deseja encontrar no sistema:")
				leia(nome)

				se(nome == nome){
					escreva("Hóspede: ",nome," já cadastrado!")
					}senao{
						escreva("Hóspede: ",nome," não cadastrado!")
						}
				}senao se(opcao == "Sair"){
					pare
					
					}se (contador == 15){
				escreva("Máximo de cadastros atingido!")
				}

				
		}//chave do loop
			

		
			
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */