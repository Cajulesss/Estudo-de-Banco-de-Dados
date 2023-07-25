programa
{
	
	funcao inicio()
	{
	/* Atividade 4 -
	 *  Ainda em relação aos eventos, o hotel oferece reserva de seu restaurante
caso o contratante necessite. O restaurante está disponível para reservas
de segunda a sexta das 7hs às 23hs; sábados e domingos apenas das
7hs às 15hs. Monte um algoritmo que receba o dia da semana (em texto)
(observação: na entrada de dados para dia da semana, desconsidere
acentos e use letra minúscula. Não é necessário validação para isso no
código). Também receba a hora (número inteiro) e diga se o restaurante
está indisponível ou disponível. Quando disponível, receba ainda o nome
da empresa e mostre na tela a mensagem “Restaurante reservado para
(nome da empresa): (dia da semana) às (horas)hs”.
	*/
	inteiro horarioDiaSemana
	cadeia diaSemana, nomeEmpresa

	escreva("Vamos começar! \n Para que dia da semana você gostaria de reservar os serviços do restaurante?")
	leia(diaSemana)
	

	escreva("Para que horas ficará melhor a sua reserva?")
	leia(horarioDiaSemana)
	escreva("TABELA DE HORÁRIOS:\n","Segunda à Sexta: das 7hs às 23hs\n","Sábado e Domingo: das 7hs às 15hs\n")

	

	se(horarioDiaSemana > 23 ou horarioDiaSemana < 7){
	escreva("Restaurante indisponível")
	   } senao se((diaSemana == "sabado" ou diaSemana == "domingo") e (horarioDiaSemana >15 ou horarioDiaSemana < 7)){
	   	escreva("Indisponível esse horário no final de semana!")
	   	}senao{
	   		escreva("Digite o nome de sua empresa:")
	   		leia(nomeEmpresa)
	   		escreva("Restaurante reservado para ", nomeEmpresa , " ", diaSemana," às ",horarioDiaSemana)
	   		}


	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1532; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */