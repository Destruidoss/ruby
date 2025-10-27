module AttrAcessorDoJoao
    def my_attr_acessor(...)
        my_attr_writer(...)
        my_attr_reader(...)
    end

    def my_attr_writer(*args)
        args.each { |arg| define_method("#{arg}=") { |value|instance_variable_set("@#{arg}", value) } }
    end

    def my_attr_reader(*args)
        args.each { |arg| define_method(arg) { instance_variable_get("@#{arg}") } }
    end
end

module FerramentasDoJoao
    def self.included(base)
        base.extend(ClassMethods)
    end

    def self.included()

    module ClassMethods
        extend AttrAcessorDoJoao

        @atributos = nil
        @tabela = nil

        def atributos(attrs)
            @atributos = attrs
        end

        def tabela(name)
            @tabela = name
        end

        def migrate
            raise ArgumentError, "Atributos MISSING" if @atributos.nil?
            raise ArgumentError, "Tabela MISSING" if @tabela.nil?

            puts "A MIGRAR..."
            puts "#{@atributos}"
            puts "#{@tabela}"

        end

        end
    end
end

class Pessoa
    include FerramentasDoJoao
    include AttrAcessorDoJoao
    
    atributos name: :string, age: :int, birthdate: :datetime
    tabela :pessoas
end

Pessoa.migrate

# print "teste 1: "
# pessoa_que_nao_existe = Pessoa.find(0) # esta funcao vai buscar a pessoa a base de dados a partir do ID
# puts pessoa_que_nao_existe.nil? ? "PASSADO" : "CHUMBADO"

# joao = Pessoa.new(name: "joao", age: 49, birthdate: "ontem") # esta funcao vai criar a pessoa na base de dados
# joao.save

# joao = Pessoa.find(0)

# print "teste 2: "
# puts joao.nil? ? "CHUMBADO" : "PASSADO"

# print "teste 3: "
# puts joao.name == "joao" ? "PASSADO" : "CHUMBADO"

# joao.name = "carlos"
# joao.save

# print "teste 4: "
# puts joao.name == "carlos" ? "PASSADO" : "CHUMBADO"

