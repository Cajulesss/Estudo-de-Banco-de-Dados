programa
{
	
	funcao inicio()
	{
	/*Atividade 1 
	 * Quando uma empresa contrata o hotel para abrigar eventos, o hotel
oferece garçons para servir os convidados. Considerando que cada
garçom custa R$ 10,50 por hora, escreva um algoritmo que recebe o
número de garçons necessários e o total de horas do evento. Depois
calcule o custo total que o hotel terá com a contratação desses
profissionais e mostre na tela o resultado.
	*/
	inteiro numeroGarcons
	real valorCadaGarcon = 10.50, numeroHorasEvento, custoTotalServico
	
	escreva("Digite o número de garçons contratados: ")
	leia(numeroGarcons)

	escreva("Escreva total de horas do evento: ")
	leia(numeroHorasEvento)

	custoTotalServico =(numeroHorasEvento * valorCadaGarcon)* numeroGarcons

	escreva("O custo total do serviço de Garçons foi de: ","R$ ",custoTotalServico)


	

	
	


	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 837; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */