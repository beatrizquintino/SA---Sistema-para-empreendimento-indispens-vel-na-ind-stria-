Algoritmo "rhBMW"

var
   opcao, opcaoBonus, desempenho, horas, horasExtras, bonus: inteiro
   salarioBruto, imposto, salarioLiquido, calcularSalario: real
   metas, idade, experiencia, producao, vendas, TI, i, area: inteiro
   maisBonus, nome, candidato, addVisu: caractere
   funcionariosProducao: vetor[1..10] de caractere
   funcionariosVendas: vetor[1..10] de caractere
   funcionariosTI: vetor[1..10] de caractere
   contadoraProducao, contadoraVendas, contadoraTI: inteiro

funcao calcularSalario(salarioBruto, imposto, salarioLiquido: real): real
inicio
   salarioLiquido <- salarioBruto - (salarioBruto * imposto) + bonus
   retorne salarioLiquido
fimfuncao

inicio
   contadoraProducao <- 1
   contadoraVendas <- 1
   contadoraTI <- 1
   imposto <- 10/100
   bonus <- 0
   enquanto opcao < 4 faca
      escreval("*Gest�o de RH*")
      escreval("Digite:")
      escreval("[1] para acessar a gest�o de folha de pagamento")
      escreval("[2] para acessar a �rea de recrutamento")
      escreval("[3] para acessar a distribui��o de departamentos")
      escreval("[4] para sair do programa")
      leia(opcao)
      escolha opcao

      caso 1

         escreval("*Folha de Pagamento*")
         escreval("Informe o sal�rio bruto do funcion�rio:")
         leia(salarioBruto)
         repita
            escreval("Bonifica��es:")
            escreval("Digite uma das op��es:")
            escreval("[1] Desempenho Individual")
            escreval("[2] Horas Extras")
            escreval("[3] Cumprimento de Metas")
            escreval("[4] Nenhum")
            leia(opcaoBonus)
            escolha opcaoBonus

            caso 1
               escreval("*Desempenho Individual*")
               escreval("Digite:")
               escreval("[1] para desempenho excelente: b�nus de R$ 1.000")
               escreval("[2] para desempenho satisfat�rio: b�nus de R$ 500")
               escreval("[3] para desempenho abaixo da m�dia: sem b�nus")
               leia(desempenho)
               escolha desempenho
               caso 1
                  bonus <- bonus + 1000
               caso 2
                  bonus <- bonus + 500
               caso 3
               fimescolha

            caso 2
               escreval("*Horas Extras*")
               esreval("Quantas horas extras o funcion�rio trabalhou?")
               leia(horas)
               horasExtras <- horas*50
               bonus <- bonus + horasExtras

            caso 3
               escreval("*Cumprimento de Metas*")
               escreval("Digite:")
               escreval("[1] para meta individual atingida: b�nus de R$800")
               escreval("[2] para meta a equipe atingida: b�nus adicional de R$300")
               escreval("[3] para as duas metas atingidas")
               leia(metas)
               escolha metas
               caso 1
                  bonus <- bonus + 800
               caso 2
                  bonus <- bonus + 300
               caso 3
                  bonus <- bonus + 800 + 300
               fimescolha

            caso 4
            fimescolha
            escreval("Deseja adicionar mais bonifica��es? (S/N)")
            leia(maisBonus)
         ate maisBonus <> "N"

         salarioLiquido <- calcularSalario(salarioBruto, imposto, salarioLiquido: real)
         escreval("Sal�rio L�quido: R$",salarioLiquido)

      caso 2
         repita
            escreval("*�rea de recrutamento*")
            escreval("Digite o nome do candidato:")
            leia(nome)
            escreval("Digite a idade do candidato:")
            leia(idade)
            escreval("Digite os anos de experi�ncia:")
            leia(experiencia)
            se (idade < 18) ou (experiencia < 2) entao
               escreval(nome, " n�o deve ser considerado na pr�xima etapa")
            senao
               escreval(nome, " deve ser considerado na pr�xima etapa")
            fimse
            escreval("Deseja consultar mais um candidato? (S/N)")
            leia(candidato)
         ate candidato <> "N"

      caso 3
         escreval("*Distribui��o de Depasrtamentos*")
         escreval("Digite:")
         escreval("[1] para acessar a �rea de produ��o")
         escreval("[2] para acessar a �rea de vendas")
         escreval("[3] para acessar a �rea de TI")
         leia(area)
         escolha area

         caso 1
            repita
               escreval("*�rea de Produ��o*")
               escreval("Digite:")
               escreval("[1] para adicionar um funcion�rio")
               escreval("[2] para visualizar os funcion�rio")
               leia(producao)
               escolha producao
               caso 1
                  se contadoraProducao <= 10 entao
                     escreval("Digite o nome do funcion�rio:")
                     leia(funcionariosProducao[contadoraProducao])
                     contadoraProducao <- contadoraProducao + 1
                  senao
                     escreval("Limite de funcion�rios atingidos")
                  fimse
               caso 2
                  para i de 1 ate contadoraProducao faca
                     escreval(funcionariosProducao[i])
                  fimpara
               fimescolha
               escreval("Deseja adicionar ou vizualizar os funcion�rios?(S/N)")
               leia(addVisu)
            ate addVisu <> "N"

         caso 2
            repita
               escreval("*�rea de Vendas*")
               escreval("Digite:")
               escreval("[1] para adicionar um funcion�rio")
               escreval("[2] para visualizar os funcion�rio")
               leia(vendas)
               escolha vendas
               caso 1
                  se contadoraVendas <= 10 entao
                     escreval("Digite o nome do funcion�rio:")
                     leia(funcionariosVendas[contadoraVendas])
                     contadoraVendas <- contadoraVendas + 1
                  senao
                     escreval("Limite de funcion�rios atingidos")
                  fimse
               caso 2
                  para i de 1 ate contadoraVendas faca
                     escreval(i,". ", funcionariosVendas[i])
                  fimpara
               fimescolha
               escreval("Deseja adicionar ou vizualizar os funcion�rios?(S/N)")
               leia(addVisu)
            ate addVisu <> "N"


         caso 3
            repita
               escreval("*�rea de TI*")
               escreval("Digite:")
               escreval("[1] para adicionar um funcion�rio")
               escreval("[2] para visualizar os funcion�rio")
               leia(TI)
               escolha TI
               caso 1
                  se contadoraTI <= 10 entao
                     escreval("Digite o nome do funcion�rio:")
                     leia(funcionariosTI[contadoraTI])
                     contadoraTI <- contadoraTI + 1
                  senao
                     escreval("Limite de funcion�rios atingidos")
                  fimse
               caso 2
                  para i de 1 ate contadoraTI faca
                     escreval(i,". ", funcionariosTI[i])
                  fimpara
               fimescolha
               escreval("Deseja adicionar ou vizualizar os funcion�rios?(S/N)")
               leia(addVisu)
            ate addVisu <> "N"
         fimescolha

      caso 4
      fimescolha
   fimescolha
fimenquanto
fimalgoritmo