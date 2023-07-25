programa
{
	
	funcao inicio()
	{
	/* Atividade 3 -
	 Ainda relativo ao atendimento de eventos, o hotel necessita de uma
funcionalidade que indique qual de seus dois auditórios é o mais
adequado para um evento. O auditório Alfa conta com 150 lugares e
espaço para até 70 cadeiras adicionais. O auditório Beta conta com 350
lugares, sem espaço para mais cadeiras. Desenvolva um algoritmo que
receba o número de convidados do evento e faça uma verificação sobre
a quantidade: se for maior que 350 ou se for menor que zero, mostre a
mensagem “Número de convidados inválido”. Se o valor informado é
válido, mostre na tela qual dos auditórios é o mais adequado. No caso do
auditório Alfa, calcule ainda quantas cadeiras adicionais serão
necessárias, observando o limite citado acima.*/

	inteiro numeroCadeirasAlfa = 150, numeroConvidados,numeroCadeirasBeta = 350 

	escreva("Escreva o número de convidados do evento:")
	leia(numeroConvidados)
	
	se((numeroConvidados > 350 ) ou (numeroConvidados <= 0)){
		escreva("Número Inválido, confira se o número de convidados é maior que o suportado ou menor ou igual a 0 !")
	}se((numeroConvidados > 0 ) e (numeroConvidados <= 150)){
		escreva("No seu caso o auditório Alfa seria ideal, sem o acréscimo de cadeiras extras")
		}se( numeroCadeirasAlfa < numeroConvidados e numeroConvidados <= 220){
			escreva("Será necessário acrescentar: ",numeroConvidados - numeroCadeirasAlfa, " cadeiras" )
			}se((numeroConvidados > 220 ) e (numeroConvidados < 351)){
			escreva("No seu caso o auditório Beta seria o ideal,porém lamento informar que não é possível acrescentar mais cadeiras :(")
			}
	
	

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1372; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */