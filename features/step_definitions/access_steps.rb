Given("Eu acesso o site hportal.webmotors.com.br") do
  @access_page.open
end

And("Navego até o menu Comprar") do
  @access_page.menu
end

And("Seleciono a opção Carros Novos") do
  @access_page.newCar
end

And("escolho o veiculo desejado") do
  @access_page.selectCar
end

And("preencho uma mensagem ao vendedor") do
  @access_page.fillVendor
end

When("Clico no botão enviar mensagem") do
  @access_page.submitVendor
end

Then("Sou direcionado para pagina de mensagem enviada com sucesso") do
  expect(@access_page.messageSubmited)
end
