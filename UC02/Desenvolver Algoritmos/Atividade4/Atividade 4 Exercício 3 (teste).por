programa
{
inclua biblioteca Texto --> tx
funcao inicio()
{
cadeia meutexto = "arara rara voa no ceu"
inteiro pos = tx.posicao_texto("rara", meutexto, 0)
se(pos < 0)
escreva("texto não encontrado")
senao
escreva("texto encontrado na posicao ", pos)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */