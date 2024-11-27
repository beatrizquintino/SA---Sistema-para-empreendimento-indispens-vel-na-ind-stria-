Algoritmo "gerenciamento-de-manutencao"
// Autor(a)    : Vitor Costa Inacio
// Data atual  : 22/11/2024
Var
   // Seção de Declarações das variáveis
   N, M, i, j, maxIndice, maquinasRestantes: inteiro
   criticidade: vetor[1..100] de inteiro
   alocado: vetor[1..100] de logico
   tecnicos: vetor[1..100] de inteiro
   maiorCriticidade: inteiro
Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   escreval("Informe o número de máquinas (N):")
   leia(N)
   escreval("Informe o núero de técnicos disponíveis (M):")
   leia(M)

   para i de 1 ate N faca
      escreval("Informe a criticidade da máquina ",i,":")
      leia(criticidade[i])
      alocado <- falso
   fimpara

   escreval("Atribuição do dia 1:")
   para i de 1 ate M faca
      maiorCriticidade <- -1
      maxIndice <- -1
      para j de 1 ate N faca
         se (nao alocado[j]) e (criticidade[j] > maiorCriticidade) entao
            maiorCriticidade <- criticidade[j]
            maxIndice <- j
         fimse
      fimpara
      se maxIndice <> -1 entao
         alocado[maxIndice] <- verdadeiro
         escreval("Técnico ",i, " não tem máquina para alocar")
      fimse
   fimpara

   maquinasRestantes <- 0
   para i de 1 ate N faca
      se nao alocados[i] entao
         maquinasRestantes <- maquinasRestantes + 1
      fimse
   fimpara

   escreval("Máquinas restantes para o próximo dia: ",maquinasRestantes)
Fimalgoritmo