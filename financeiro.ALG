Algoritmo "financeiro"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/11/2024
Var
   // Despesas, receitas e cálculos
   despesas: vetor[1..12, 1..100] de real
   categorias: vetor[1..12, 1..100] de caractere
   receitas: vetor[1..12] de real
   fluxo_caixa: vetor[1..12] de real
   saldo_acumulado: real
   total_despesas: vetor[1..12] de real


   opcao, mes, i, carros_vendidos, contador_despesas: inteiro
   preco_medio, valor_despesa: real
   categoria_despesa: caractere

Inicio

   Para mes de 1 ate 12 faca
      receitas[mes] <- 0
      fluxo_caixa[mes] <- 0
      total_despesas[mes] <- 0
      Para i de 1 ate 100 faca
         despesas[mes, i] <- 0
         categorias[mes, i] <- ""
      FimPara
   FimPara
   saldo_acumulado <- 0


   Enquanto (verdadeiro) faca
      Escreval("=== Sistema de Controle Financeiro BMW ===")
      Escreval("")
      Escreval("1. Registrar Despesa")
      Escreval("2. Registrar Receita")
      Escreval("3. Calcular Fluxo de Caixa")
      Escreval("4. Gerar Relatório Mensal")
      Escreval("5. Gerar Relatório Anual")
      Escreval("6. Sair")
      Escreval("")
      Escreva("Escolha uma opção: ")
      Leia(opcao)

      Escolha opcao
      Caso 1

         Escreva("Digite o mês (1 a 12): ")
         Leia(mes)
         Se (mes < 1) ou (mes > 12) entao
            Escreval("Mês inválido!")

         FimSe


         contador_despesas <- 0
         Para i de 1 ate 100 faca
            Se despesas[mes, i] = 0 entao
               contador_despesas <- i
            FimSe
         FimPara

         Se contador_despesas = 0 entao
            Escreval("Limite de despesas atingido para o mês ", mes, "!")

         FimSe

         Escreva("Digite o valor da despesa: ")
         Leia(valor_despesa)
         Escreva("Digite a categoria da despesa (Fixas ou Variáveis): ")
         Leia(categoria_despesa)

         despesas[mes, contador_despesas] <- valor_despesa
         categorias[mes, contador_despesas] <- categoria_despesa
         total_despesas[mes] <- total_despesas[mes] + valor_despesa
         Escreval("Despesa registrada com sucesso!")

      Caso 2

         Escreva("Digite o mês (1 a 12): ")
         Leia(mes)
         Se (mes < 1) ou (mes > 12) entao
            Escreval("Mês inválido!")

         FimSe
         Escreva("Digite o número de carros vendidos: ")
         Leia(carros_vendidos)
         Escreva("Digite o preço médio por carro: ")
         Leia(preco_medio)

         receitas[mes] <- carros_vendidos * preco_medio
         Escreval("Receita registrada com sucesso!")

      Caso 3

         saldo_acumulado <- 0
         Para mes de 1 ate 12 faca
            fluxo_caixa[mes] <- receitas[mes] - total_despesas[mes]
            saldo_acumulado <- saldo_acumulado + fluxo_caixa[mes]
         FimPara
         Escreval("Fluxo de caixa calculado com sucesso!")

      Caso 4

         Escreva("Digite o mês (1 a 12): ")
         Leia(mes)
         Se (mes < 1) ou (mes > 12) entao
            Escreval("Mês inválido!")

         FimSe

         Escreval("=== Relatório do Mês ", mes, " ===")
         Escreval("Despesas:",despesas[mes])
         Para i de 1 ate 100 faca
            Se despesas[mes, i] > 0 entao
               Escreval(" - Categoria: ", categorias[mes, i], ", Valor: R$", despesas[mes, i])
            FimSe
         FimPara
         Escreval("Receitas: R$", receitas[mes])
         Escreval("Fluxo de Caixa: R$", fluxo_caixa[mes])
         Escreval("Saldo Acumulado: R$", saldo_acumulado)

      Caso 5

         Escreval("=== Relatório Anual ===")
         Escreval("Receitas Totais: R$",receitas[mes])
         Escreval("Despesas Totais: R$",total_despesas[mes])
         Escreval("Lucro/Prejuízo: R$",receitas[mes] - total_despesas[mes])
         Escreval("Saldo Final Acumulado: R$", saldo_acumulado)

      Caso 6

         Escreval("Saindo do sistema...")

FimAlgoritmo
Inicio
OutroCaso
   Escreval("Opção inválida!")
FimEscolha
FimEnquanto
FimAlgoritmo