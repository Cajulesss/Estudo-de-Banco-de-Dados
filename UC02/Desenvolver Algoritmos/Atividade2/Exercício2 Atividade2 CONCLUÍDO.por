programa
{
	/*Monte um algoritmo em que se informa a quantidade de hóspedes e, para
cada hóspede, leia o número do quarto e o valor da diária. Mostre na tela
a mensagem “Quarto [numero]: R$ [valor]”. Ao final, mostre o total de
diárias. Não usar vetor ou listas.*/
	funcao inicio()
	{
		inteiro quantidadeHospede, numeroQuarto, contador
		real valorDiaria, totalDiaria = 0
		cadeia nomeCliente
		
		escreva("Seja Bem-Vindo ao serviço de hospedagem do Hotel!\nBora registrar a quantidade de hóspedes, digite: ")
		leia(quantidadeHospede)

		para(contador = 0; contador < quantidadeHospede;contador++){
		

		escreva("Informe o nome no cliente hospedado: ")
		leia(nomeCliente)

		escreva("Continuando digite o valor da diária: ")
		leia(valorDiaria)

		escreva("Em seguida informe o número do quarto: ")
		leia(numeroQuarto)

		//Calculando total diária: (acumular os valores)
		totalDiaria =  totalDiaria + valorDiaria
		

		escreva("Quarto: ",numeroQuarto," Valor diária: ", valorDiaria," Nome do hospedado(a): ",nomeCliente,"\n\n")

		

		}
		se(contador == quantidadeHospede ){
			escreva("Valor total da diária: ", totalDiaria)
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 912; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */