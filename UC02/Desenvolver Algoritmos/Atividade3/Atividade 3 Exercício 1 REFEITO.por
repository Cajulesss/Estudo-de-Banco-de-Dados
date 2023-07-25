programa
{
	
	funcao inicio()
	{
	/*Considerando que o hotel tenha 20 quartos, desenvolva um algoritmo
para marcar a ocupação de cada quarto. No início todos os quartos estão
livres. O usuário informará então o número do quarto (de 1 a 20); o
sistema questionará “O quarto está livre ou ocupado? (L/O)”; o usuário
informará L ou O e o sistema registrará essa escolha para o quarto. Caso
o usuário informe “O”, mas o quarto já está marcado como ocupado,
mostre na tela “Quarto já está ocupado”. Pergunte ao usuário se ele
deseja continuar e caso positivo, repita a operação. Ao fim, mostre o
status de cada quarto.*/

	logico ocupacaoOcupado [20] = {falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso,falso}

	//Variável para escolha de quarto e contador
	inteiro escolhaQuartoUsuario, contador

	//Criação do vetor de número de quartos
	inteiro quartosDoHotel [20]

	//Continuar ou não na operação:
	cadeia continuar = ""

	//Criação do laço de repetição
	enquanto(continuar != "N"){

	//Perguntar ao usuário escolha de quarto:
	escreva("Oi! Digite por gentileza o número do quarto que deseja ocupar (1-20):")
	leia(escolhaQuartoUsuario)

	escreva("O quarto está livre ou ocupado? Deseja ocupá-lo? (L/O)")
	leia(continuar)

	//Condição para ocupado ou livre:
	se(ocupacaoOcupado[escolhaQuartoUsuario-1] == verdadeiro e continuar == "O"){
		escreva("Quarto já ocupado por outro hóspede!")
		}senao se (continuar == "L") {
                    ocupacaoOcupado[escolhaQuartoUsuario-1] = falso
                    escreva("Quarto marcado como livre.\n")
                } senao se (continuar == "O") {
                    ocupacaoOcupado[escolhaQuartoUsuario-1] = verdadeiro
                    escreva("Quarto marcado como ocupado.\n")
                }

     escreva("Deseja continuar?")
     leia(continuar)
    
			
		}
		//DAR UMA OLHADA NESSE TRECHO DO CÓDIGO: (ELE NÃO APARECE AS RESPOSTAS COMPLETAS DE OCUPAÇÃO!)
	escreva("STATUS QUARTOS:")
	para (contador = 0; contador < 20; contador++) {
            escreva("\n Quarto: ",(contador+1),":")

            se (ocupacaoOcupado[contador] == verdadeiro){
            	escreva("OCUPADO!")
            	}senao{
            		escreva("LIVRE!")
            		}
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */