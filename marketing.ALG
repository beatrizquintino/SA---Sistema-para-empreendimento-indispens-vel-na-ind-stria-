Algoritmo "semnome"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 27/11/2024
Var
// Se��o de Declara��es das vari�veis
investimento, receita, lucro, ROI: real
instagram, facebook, google: real
clique, contador: inteiro
opcao: caractere

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc.

escreval("Digite o valor que voc� deseja investir para as campanhas de Publicidade:")
leia(investimento)
escreval("Digite o valor que foi gerado pela campanha de publicidade:")
leia(receita)


lucro <- receita / investimento
ROI <- (lucro / investimento) * 100

escreval("O lucro foi de: R$", lucro)
escreval("O ROI da campanha � de: ", ROI, "%")


instagram <- lucro * 5 / 10
facebook <- lucro * 3 / 10
google <- lucro * 2 / 10

escreval("===== Distribui��o gerada na empresa =====")
escreval("50% para o Instagram Ads: R$", instagram:0:2)
escreval("30% para o Facebook Ads: R$", facebook:0:2)
escreval("20% para o Google Ads: R$", google:0:2)


clique <- 0
contador <- 0

repita
    escreval("Digite 'C' para registrar o acesso do cliente ou 'S' para sair: ")
    leia(opcao)

    se (opcao = "C") ou (opcao = "c") entao
        clique <- clique + 1
        contador <- contador + 1
        escreval("Cliques registrados at� o momento: ", clique)
    fimse
ate (opcao = "S") ou (opcao = "s")


escreval("Total de cliques no an�ncio: ", clique)
escreval("Obrigado por utilizar o nosso sistema.")


Fimalgoritmo