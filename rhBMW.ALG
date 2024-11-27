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
      escreval("*Gestão de RH*")
      escreval("Digite:")
      escreval("[1] para acessar a gestão de folha de pagamento")
      escreval("[2] para acessar a área de recrutamento")
      escreval("[3] para acessar a distribuição de departamentos")
      escreval("[4] para sair do programa")
      leia(opcao)
      escolha opcao

      caso 1

         escreval("*Folha de Pagamento*")
         escreval("Informe o salário bruto do funcionário:")
         leia(salarioBruto)
         repita
            escreval("Bonificações:")
            escreval("Digite uma das opções:")
            escreval("[1] Desempenho Individual")
            escreval("[2] Horas Extras")
            escreval("[3] Cumprimento de Metas")
            escreval("[4] Nenhum")
            leia(opcaoBonus)
            escolha opcaoBonus

            caso 1
               escreval("*Desempenho Individual*")
               escreval("Digite:")
               escreval("[1] para desempenho excelente: bônus de R$ 1.000")
               escreval("[2] para desempenho satisfatório: bônus de R$ 500")
               escreval("[3] para desempenho abaixo da média: sem bônus")
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
               esreval("Quantas horas extras o funcionário trabalhou?")
               leia(horas)
               horasExtras <- horas*50
               bonus <- bonus + horasExtras

            caso 3
               escreval("*Cumprimento de Metas*")
               escreval("Digite:")
               escreval("[1] para meta individual atingida: bônus de R$800")
               escreval("[2] para meta a equipe atingida: bônus adicional de R$300")
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
            escreval("Deseja adicionar mais bonificações? (S/N)")
            leia(maisBonus)
         ate maisBonus <> "N"

         salarioLiquido <- calcularSalario(salarioBruto, imposto, salarioLiquido: real)
         escreval("Salário Líquido: R$",salarioLiquido)

      caso 2
         repita
            escreval("*Área de recrutamento*")
            escreval("Digite o nome do candidato:")
            leia(nome)
            escreval("Digite a idade do candidato:")
            leia(idade)
            escreval("Digite os anos de experiência:")
            leia(experiencia)
            se (idade < 18) ou (experiencia < 2) entao
               escreval(nome, " não deve ser considerado na próxima etapa")
            senao
               escreval(nome, " deve ser considerado na próxima etapa")
            fimse
            escreval("Deseja consultar mais um candidato? (S/N)")
            leia(candidato)
         ate candidato <> "N"

      caso 3
         escreval("*Distribuição de Depasrtamentos*")
         escreval("Digite:")
         escreval("[1] para acessar a área de produção")
         escreval("[2] para acessar a área de vendas")
         escreval("[3] para acessar a área de TI")
         leia(area)
         escolha area

         caso 1
            repita
               escreval("*Área de Produção*")
               escreval("Digite:")
               escreval("[1] para adicionar um funcionário")
               escreval("[2] para visualizar os funcionário")
               leia(producao)
               escolha producao
               caso 1
                  se contadoraProducao <= 10 entao
                     escreval("Digite o nome do funcionário:")
                     leia(funcionariosProducao[contadoraProducao])
                     contadoraProducao <- contadoraProducao + 1
                  senao
                     escreval("Limite de funcionários atingidos")
                  fimse
               caso 2
                  para i de 1 ate contadoraProducao faca
                     escreval(funcionariosProducao[i])
                  fimpara
               fimescolha
               escreval("Deseja adicionar ou vizualizar os funcionários?(S/N)")
               leia(addVisu)
            ate addVisu <> "N"

         caso 2
            repita
               escreval("*Área de Vendas*")
               escreval("Digite:")
               escreval("[1] para adicionar um funcionário")
               escreval("[2] para visualizar os funcionário")
               leia(vendas)
               escolha vendas
               caso 1
                  se contadoraVendas <= 10 entao
                     escreval("Digite o nome do funcionário:")
                     leia(funcionariosVendas[contadoraVendas])
                     contadoraVendas <- contadoraVendas + 1
                  senao
                     escreval("Limite de funcionários atingidos")
                  fimse
               caso 2
                  para i de 1 ate contadoraVendas faca
                     escreval(i,". ", funcionariosVendas[i])
                  fimpara
               fimescolha
               escreval("Deseja adicionar ou vizualizar os funcionários?(S/N)")
               leia(addVisu)
            ate addVisu <> "N"


         caso 3
            repita
               escreval("*Área de TI*")
               escreval("Digite:")
               escreval("[1] para adicionar um funcionário")
               escreval("[2] para visualizar os funcionário")
               leia(TI)
               escolha TI
               caso 1
                  se contadoraTI <= 10 entao
                     escreval("Digite o nome do funcionário:")
                     leia(funcionariosTI[contadoraTI])
                     contadoraTI <- contadoraTI + 1
                  senao
                     escreval("Limite de funcionários atingidos")
                  fimse
               caso 2
                  para i de 1 ate contadoraTI faca
                     escreval(i,". ", funcionariosTI[i])
                  fimpara
               fimescolha
               escreval("Deseja adicionar ou vizualizar os funcionários?(S/N)")
               leia(addVisu)
            ate addVisu <> "N"
         fimescolha

      caso 4
      fimescolha
   fimescolha
fimenquanto
fimalgoritmo