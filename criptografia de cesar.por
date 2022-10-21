programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti

	cadeia alfabeto[26] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	
	inteiro chave = 0

	cadeia frase
	
	funcao inicio()
	{
		escreva("Qual a frase a ser criptografada? ")
		leia(frase)

		escreva("Qual a chave desejada?")
		leia(chave)

		
	}

	funcao vazio criptografar(cadeia frase, inteiro chave){
		
		inteiro numeroLetras = t.numero_caracteres(frase)

		escreva("a frase tem ", numeroLetras, " letras. \n")

		para(inteiro i=0; i < numeroLetras; i++){
			
			caracter letra = t.obter_caracter(frase, i)
			cadeia letraConvertida = ti.caracter_para_cadeia(letra)
			
			//em qual posicao do alfabeto está essa letra?
			para(inteiro j=0; j < 26; j++){

				se(letraConvertida == alfabeto[j]){
					//escreva("a letra ", letraConvertida, " está na posicao ", j, "\n")

					inteiro posicaoCriptografada = j + chave

					//garantir que se a posicao passar do Z, volte para o inicio do alfabeto
					posicaoCriptografada = posicaoCriptografada % 26 
					
					escreva(alfabeto[posicaoCriptografada])
					pare
				}
			}
		}
		
		
	}

	funcao descriptografar(){
		//desafio
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @DOBRAMENTO-CODIGO = [23];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alfabeto, 7, 8, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */