#exemplo de Classe

Customer = Struct.new(:name, :age) do
    def greeting
        p "Hello #{name}, you are young, have just #{age} years!"
    end
end


#para adicionar aos meus symbols um dado
joao = Customer.new('Joao', 25)

#para chamar o que foi adicionado
joao.name
joao.age