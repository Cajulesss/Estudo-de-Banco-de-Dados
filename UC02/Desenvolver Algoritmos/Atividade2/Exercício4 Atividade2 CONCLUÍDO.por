programa
{
	/*Expanda o algoritmo anterior para que, ao final, mostre o nome e a idade
do hóspede mais velho e também o nome e a idade do mais jovem.
Também adapte para que, ao invés de encerrar com a palavra “PARE”,
pergunte ao usuário se ele deseja continuar a informar os dados (“S” ou
“N”) e, caso digite “N”, encerre a execução.*/
	funcao inicio()
	{
		real valorDiaria , totalDiaria = 0, desconto
		cadeia nomeHospede, parar = "S",resposta, continuar = "N",nomeDoMaisVelho = "",nomeDoMaisNovo = ""
		inteiro idadeHospede, contador,gratuidadePlena = 0, quantidadeMeia = 0, idadeMaisNovo = 120, idadeMaisVelho = 0

		

		para(contador = 0 ;parar == parar;contador++){

		escreva("Para fixar tudo certinho necessitamos do valor da sua diária: ")
		leia(valorDiaria)
		
		escreva("Diga-me seu nome: ")
		leia(nomeHospede)

		escreva("Precisamos saber sua idade: ")
		leia(idadeHospede)

		se(idadeHospede < 4){
			escreva(nomeHospede, " Possui diária paga por nosso programa de gratuidade!")
			gratuidadePlena++
			}senao se(idadeHospede > 80){
				escreva(nomeHospede," Possui 50% da diária paga")
				totalDiaria += valorDiaria/2
				quantidadeMeia++
				}senao{
					escreva("Você não se adequa ao sistema de meia diária e de gratuidade!")
					totalDiaria += valorDiaria
					}
		// O usuário informará hóspedes até digitar a palavra "Pare"

		

			se(idadeHospede > idadeMaisVelho) {
                    idadeMaisVelho = idadeHospede
                    nomeDoMaisVelho = nomeHospede
                }

                se(idadeHospede < idadeMaisNovo) {
                    idadeMaisNovo = idadeHospede
                    nomeDoMaisNovo = nomeHospede
                }
          escreva("\nCajo deseja encerrar o programa e ver o resultado total dessas entradas de dados| Digite: 'S (SIM), caso não, apenas | Digite: 'N (NÃO)'",  "\n")
		leia(resposta)
          se(resposta == parar){
		pare
			}
		}
		// calcula o valor total de diárias pagas
          escreva("Valor total: ", totalDiaria)
          
          

          //Somar a quantidade de gratuidades
          escreva("\nQuantidade gratuidades: ",gratuidadePlena)
          escreva("\nQuantidade de meias diárias: ",quantidadeMeia,"\n")
          escreva(nomeDoMaisVelho, " é o hóspede mais velho com ", idadeMaisVelho, " anos\n")
          escreva(nomeDoMaisNovo, " é o hóspede mais novo com: ",idadeMaisNovo, " anos\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2398; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */