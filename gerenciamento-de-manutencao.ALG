Algoritmo "gerenciamento-de-manutencao"
// Autor(a)    : Vitor Costa Inacio
// Data atual  : 22/11/2024
Var
   // Se��o de Declara��es das vari�veis
   N, M, i, j, maxIndice, maquinasRestantes: inteiro
   criticidade: vetor[1..100] de inteiro
   alocado: vetor[1..100] de logico
   tecnicos: vetor[1..100] de inteiro
   maiorCriticidade: inteiro
Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   escreval("Informe o n�mero de m�quinas (N):")
   leia(N)
   escreval("Informe o n�ero de t�cnicos dispon�veis (M):")
   leia(M)

   para i de 1 ate N faca
      escreval("Informe a criticidade da m�quina ",i,":")
      leia(criticidade[i])
      alocado <- falso
   fimpara

   escreval("Atribui��o do dia 1:")
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
         escreval("T�cnico ",i, " n�o tem m�quina para alocar")
      fimse
   fimpara

   maquinasRestantes <- 0
   para i de 1 ate N faca
      se nao alocados[i] entao
         maquinasRestantes <- maquinasRestantes + 1
      fimse
   fimpara

   escreval("M�quinas restantes para o pr�ximo dia: ",maquinasRestantes)
Fimalgoritmo