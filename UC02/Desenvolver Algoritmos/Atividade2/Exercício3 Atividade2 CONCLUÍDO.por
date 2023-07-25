programa
{
	/*Escreva um algoritmo que receba o valor padrão de uma diária. Em
seguida, receba vários nomes de hóspedes e suas idades. Caso o
hóspede seja menor que 4 anos, ele não paga hospedagem – nesses
casos mostre na tela “(Nome do hóspede) possui gratuidade”; hóspedes
com mais de 80 anos pagam metade – mostre na tela “(Nome do
hóspede) paga meia”. O usuário informará hóspedes até digitar a palavra
“PARE”, que interrompe a entrada de dados. Ao fim, mostre a quantidade
de gratuidades, a quantidade de meias hospedagens e o valor total,
considerando todos os hóspedes informados.*/
	funcao inicio()
	{
		real valorDiaria = 0, totalDiaria = 0, desconto
		cadeia nomeHospede, parar = "S",resposta, continuar = "N"
		inteiro idadeHospede, contador,gratuidadePlena = 0, quantidadeMeia = 0 

		

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
				quantidadeMeia++
				totalDiaria += valorDiaria/2
				}senao{
					escreva("Você não se adequa ao sistema de meia diária e de gratuidade!")
					totalDiaria += valorDiaria
					}
		// O usuário informará hóspedes até digitar a palavra "Pare"

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
          escreva("\nQuantidade de meias diárias: ",quantidadeMeia)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1331; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */