# Automação de testes WebMotors


![NPM](https://img.shields.io/npm/l/react)

# Sobre o projeto

QA Sênior – Desafio técnico

Automação de testes da WebMotors Front-end é a automação de testes feita em Ruby, onde automatizamos testes manuais simulando o cliente, considerar a documentação: https://hportal.webmotors.com.br/
. A aplicação consiste em automatizar testes utilizando BDD em Ruby + Capybara + Cucumber, onde os clientes fazem buscas página web e interage com o vendedor por meio de mensagem.

## Modelo conceitual

# Tecnologias utilizadas

## Automação Front End
- Ruby/Cucumber/Capybara
- HTML / CSS 
- selenium-webdriver
- Html Report

#
## Arquitetura do projeto
### Configurando sua máquina


Necessário instalar:

Ruby for Windows: linguagem de programação utilizada nos testes.
Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows.
Configurando o ambiente de automação de testes Api. Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:

Windows
1. Instalando o Console do Cmder
Baixe em: https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip .
Descompactar na pasta C:\Cmder.
Selecione o cmder.exe e arrastar até sua barra de ferramentas do Windows para criar um atalho.
Executar o cmder.exe.
2. Instalando o Ruby para Windows de acordo com a versão do seu sistema operacional e arquitetura x86 (32bits) ou x64 (64bits)
Baixe em: http://rubyinstaller.org/downloads/.
Executar o arquivo baixado e seguir as instruções clicando em ‘next’.
Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada.
3. Instalando Devkit
Baixe em (x86): https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe.
Baixe em (x64): http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe.
Acesse o diretório C:\Ruby23-x64.
Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta.
Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
No Console do Cmder, digite os comandos:

```bash
cd/
cd C:\Ruby23-x64\devkit
ruby dk.rb init
ruby dk.rb install
```

4. Alterando os sources do rubygems
O Rubygems precisa de uma atualização de certificado de sergurança para permitir utilizar com https, e para não precisar atualizar isso, passamos a utilizar então o repositório de gems em http, fazendo o seguinte:

No Console do Cmder, digite o comando:
```bash
gem sources -a http://rubygems.org/

gem sources -r https://rubygems.org/
```
5. Instalando o bundler
No Console do Cmder, digite o comando:
```bash
gem install bundler

bundle install
```
6. Instalando o chromedriver, IEdriver e Geckodriver
Baixe o chromedriver em: https://sites.google.com/a/chromium.org/chromedriver/downloads .

Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin. Faça o mesmo para o IEdriver e o Geckodriver.

7. Configurando WebDriver na maquina

na raiz(c:), criar uma pasta com o nome 'tools', dentro da pasta tools criar uma nova pasta com o nome WebDriver,
dentro da pasta descompactar o arquivo Webdriver, baixado de acordo com a versão do navegador atual da máquina
rodará os testes(versão pode ser obtida com: 'chrome://settings/help')

em variáveis de ambiente criar uma nova variável com:

Nome da variábel : WebDrivers

Valor da variável: C:\tools\webdrivers

e depois deve se Editar o path, inserindo o WebDriver:
%WebDrivers%

Instalação do JDK 8 Acessar a pagina abaixo para baixar e instlar o JDK 8 https://www.oracle.com/br/java/technologies/javase/javase8-archive-downloads.html#license-lightbox
Agora o ambiente está configurado, podemos rodar os testes.
Como Executar os testes automatizados
Para executar o testes automatizados usaremos alguns comandos a partir da pasta raiz do nosso projeto.

Para execução de todos os cenários implementados  utilizamos o seguinte código:
```bash
cucumber
```
Este código executará o teste completo.

o resultado será:

```bash
PS C:\Users\filip\Desktop\WebMotors\front_webmotors_ruby> cucumber
Using the default, bdd and html profiles...
Feature: Acessar a pagina Web da WebMotors
            Sendo eu um cliente em busca do meu futuro veículo, acesso o site hportal
            Entro em contato com dos vendedores
            Para realizar as negociações ou consultar preços.

  Scenario: Acessar a tela principal                                 # features/specs
    Given Eu acesso o site hportal.webmotors.com.br                  # features/step_
    And preencho uma mensagem ao vendedor                            # features/step_definitions/access_steps.rb:17
    When Clico no botão enviar mensagem                              # features/step_definitions/access_steps.rb:21
    Then Sou direcionado para pagina de mensagem enviada com sucesso # features/step_definitions/access_steps.rb:25

1 scenario (1 passed)
7 steps (7 passed)
0m23.303s
```

Para acessar o Report em HTML é só abrir o arquivo report.html seguindo o caminho abaixo: 
C:\front_webmotors_ruby\logs\report.html.

Autor
"Filipe Cardoso Gabriel"