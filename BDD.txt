Feature: Acessar a pagina Web da WebMotors
            Sendo eu um cliente em busca do meu futuro veículo, acesso o site hportal.webmotors.com.br
            Entro em contato com dos vendedores
            Para realizar as negociações ou consultar preços.

    Scenario: Acessar a tela principal

        Given Eu acesso o site hportal.webmotors.com.br
        And Navego até o menu Comprar
        And Seleciono a opção Carros Novos
        And escolho o veiculo desejado
        And preencho uma mensagem ao vendedor
        When Clico no botão enviar mensagem
        Then Sou direcionado para pagina de mensagem enviada com sucesso