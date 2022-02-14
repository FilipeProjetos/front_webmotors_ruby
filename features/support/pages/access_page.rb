class AccessPage
  include Capybara::DSL

  def open
    visit "/"
  end

  def menu
    return find("li.Menu-User__list-links__navigation__item:nth-child(1)").click
  end

  def newCar
    return find("#navigationNewCars").click
  end

  def selectCar
    visit "/carros-novos/estoque?tipoveiculo=carros-novos"
    find("div.sc-hMFtBS:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1) > img:nth-child(1)").click
  end

  def fillVendor
    visit "/comprar/ford/ranger/22-xls-4x2-cd-16v-diesel-4p-manual/4-portas/2017-2018/23337750?pos=a23337750g:&np=1"
    find(".Forms__cookie__stage > .Form__field--name > input").set "joao"
    find(".Forms__cookie__stage > .Form__field--email > input").set "joao@joao.com"
    find(".Forms__cookie__stage > .Form__field--phone > input").set  999999999
  end

  def submitVendor
    sleep 5
    find("button.Button:nth-child(5)")
  end

  def messageSubmited
    visit "/mensagem-enviada?id=23337750&tipoveiculo=car&brand=ford&model=ranger&year=2017-2018&version=22-xls-4x2-cd-16v-diesel-4p-manual&doors=4-portas"
    find(".Banner__title > h2")
  end
end
