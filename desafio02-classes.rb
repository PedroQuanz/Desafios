require 'date';

class Produto
    attr_accessor :nome, :id_produto
end

class Bebida_alcoolica < Produto
    attr_accessor :teor_alcoolico, :created_at

    def initialize
        @created_at = Date.today
    end

    def printar_caracteristicas
        p "nome: #{nome}"
        p "teor alcoolico: #{teor_alcoolico}"
        p "ID do produto: #{id_produto}"
        p "criado em: #{created_at}"    
    end
end

bebida1 = Bebida_alcoolica.new

bebida1.nome = "brahma"
bebida1.teor_alcoolico = 3.2
bebida1.id_produto = "001"
bebida1.created_at = Date.today

bebida2 = Bebida_alcoolica.new

bebida2.nome = "heineken"
bebida2.teor_alcoolico = 5
bebida2.id_produto = "002"



bebida1.printar_caracteristicas()
puts "-----------------------------"
bebida2.printar_caracteristicas()



