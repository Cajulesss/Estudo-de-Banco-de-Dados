programa
{
    funcao inicio()
    {
        cadeia continuar = "", nomeTerceirizada = "", empreMenValor = ""
        inteiro minimoDesconto = 0, numAparelhos = 0
        real valAparelho = 0.0, percenDesconto = 0.0, menValor = 100000000.00, maValor = 0.0

        enquanto (continuar != "N")
        {
            dadosEmpresa(nomeTerceirizada, minimoDesconto, valAparelho, numAparelhos, percenDesconto, menValor, maValor, empreMenValor)
            escreva("Deseja informar novos dados? (S/N)")
            leia(continuar)
        }

        escreva("O orçamento de menor valor é o de ", empreMenValor, " por R$ ", menValor)
    }

    funcao dadosEmpresa(cadeia nomeEmpresa, inteiro minimoAparelhoDesconto, real valorAparelho, inteiro numeroAparelhos, real percentualDesconto, real &menorValor, real &maiorValor, cadeia &empresaMenorValor)
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

        se (numeroAparelhos >= minimoAparelhoDesconto)
        {
            escreva("Digite o percentual de desconto:")
            leia(percentualDesconto)
            escreva("O serviço de: ", nomeEmpresa, " custará: R$ ", percentualDesconto / 100 * valorTotal, " \n")
        }
        senao
        {
            escreva("O serviço de: ", nomeEmpresa, " custará: R$ ", valorTotal, " \n")
        }

        se (valorTotal < menorValor)
        {
            menorValor = valorTotal
            empresaMenorValor = nomeEmpresa
        }

        se (valorTotal > maiorValor)
        {
            maiorValor = valorTotal
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1900; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */