programa
{

/*A manutenção dos ares condicionados no hotel são realizadas por
empresas terceirizadas que, em alguns casos, oferecem desconto
quando o serviço é realizado em uma quantidade determinada de
aparelhos. A partir desse contexto:

a. Crie uma função ou procedimento que receba o nome da empresa,
o valor do serviço por aparelho, a quantidade de aparelhos em
manutenção, o percentual de desconto (que pode ser zero) e a
quantidade mínima de aparelhos para que o desconto seja dado.

b. Calcule nessa função/procedimento o valor total do serviço a partir
do valor por aparelho e da quantidade de aparelhos. Aplique sobre
esse valor o desconto, caso a quantidade de aparelhos seja maior
que a mínima informada para que haja desconto. Ao fim mostre a
mensagem “O serviço de [nome da empresa] custará R$ [total
calculado]”.

c. Concluída a função ou procedimento, monte um algoritmo que
permita que o usuário informe várias empresas e os outros dados
necessários para o cálculo, usando a função/procedimento para
mostrar o total orçado de cada empresa. Termine o algoritmo
quando o usuário responder ‘N’ à mensagem “Deseja informar
novos dados? (S/N)”.*/

	
	funcao inicio()
	{
		cadeia continuar = "", nomeTerceirizada = ""

		inteiro minimoDesconto = 0, numAparelhos = 0
		real valAparelho = 0.0,percenDesconto = 0.0

		enquanto(continuar != "N")
		{

			dadosEmpresa(nomeTerceirizada,minimoDesconto,valAparelho,numAparelhos,percenDesconto)
			
			escreva("Deseja informar novos dados? (S/N)")
			leia(continuar)

		}
	}

	funcao dadosEmpresa(cadeia nomeEmpresa,inteiro minimoAparelhoDesconto,real valorAparelho,inteiro numeroAparelhos,real percentualDesconto)
	{
		
		escreva("\nDigite por gentileza o nome da sua empresa:")
		leia(nomeEmpresa)

		escreva("Digite o número de aparelhos mínimos para descontos:")
		leia(minimoAparelhoDesconto)

		escreva("Valor por aparelho:")
		leia(valorAparelho)

		escreva("Digite o número de aparelhos:")
		leia(numeroAparelhos)

		real valorTotal = numeroAparelhos * valorAparelho
			
			se(numeroAparelhos >= minimoAparelhoDesconto)
			{
				escreva("Digite o percentual de desconto:")
				leia(percentualDesconto)
				escreva("O serviço de: ",nomeEmpresa, " custará: R$ ",percentualDesconto /100 * valorTotal," \n")
			}senao
			{
				escreva("O serviço de: ",nomeEmpresa, " custará: R$ ",valorTotal," \n")
			}

		
	}

	

	

	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1669; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */