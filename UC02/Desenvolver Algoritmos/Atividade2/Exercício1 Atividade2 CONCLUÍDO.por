programa
{
	/*Atividade2 (EXERCÍCIO 1)
	Desenvolva um algoritmo que receba o valor de uma diária no hotel e a
quantidade de dias de hospedagem. Valide as informações, ou seja,
impeça que o usuário informe dados inválidos, de maneira que o valor da
diária não seja negativo e que a quantidade de dias não seja negativa
nem maior que 30. Em caso de informação inválida escreva na tela “Valor
Inválido” e solicite novo valor. Ao final de tudo escreva “Fim do programa”
	
	
	
	*/
	
	funcao inicio()
	{

	real valorDiaria
	inteiro quantidadeDiasHospedagem

	escreva("Digite o valor da sua diária por gentileza:")
	leia(valorDiaria)

	escreva("Cotinuando, informe a quantidade de dias da sua hospedagem:")
	leia(quantidadeDiasHospedagem)
	
		
		

	    enquanto((valorDiaria < 0 ) ou (quantidadeDiasHospedagem < 0) ou (quantidadeDiasHospedagem >30)){
	    	 
	    	
		escreva("Valor Inválido! Confira suas respostas! \n")
		
		escreva("Digite o valor da sua diária por gentileza:")
	     leia(valorDiaria)

	     escreva("Cotinuando, informe a quantidade de dias da sua hospedagem:")
	     leia(quantidadeDiasHospedagem)

	    
		}
		se((valorDiaria > 0 ) ou (quantidadeDiasHospedagem > 0) ou (quantidadeDiasHospedagem >30) ){
	     escreva("Fim do programa!")
	          }
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1266; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */