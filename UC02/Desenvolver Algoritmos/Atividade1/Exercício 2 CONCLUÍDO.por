programa
{
	
	funcao inicio()
	{
	/*Atividade 2
	O hotel oferece café, água e salgadinhos para cada um dos convidados
de um evento alocado em suas dependências. A quantidade de café, em
litros, é calculada como 0,2 litro para cada convidado; a quantidade de
água é calculada como 0,5 litro para cada convidado; são oferecidos 7
salgadinhos por pessoa. Faça um algoritmo que receba a quantidade de
convidados e valide se o número de pessoas excede 350 (a capacidade
máxima do salão), mostrando, nesse caso, a mensagem “quantidade de
convidados superior à capacidade máxima”. Caso a quantidade seja
válida, calcule a quantidade de água, café e salgadinhos para o evento,
mostrando na tela esses valores
	*/

	real quantidadeCafe = 0.2, quantidadeAgua = 0.5
	inteiro quantidadeSalgadinho = 7 , numeroDeConvidados

	escreva("Oi! Tudo bem?\nDigite o número de convidados:")
	leia(numeroDeConvidados)

	se(numeroDeConvidados > 350){
		escreva("Excedeu o número máximo de convidados no salão!")
		}senao{
			escreva("Quantidade total de água gasta:", quantidadeAgua * numeroDeConvidados ,"\n", "Quantidade total de café gasto: ",quantidadeCafe * numeroDeConvidados, "\n", "Quantidade total de salgadinhos gastos: ",quantidadeSalgadinho * numeroDeConvidados )
			}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1268; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */