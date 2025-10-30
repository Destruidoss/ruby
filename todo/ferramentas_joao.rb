require 'pg'
require_relative 'db_connector'
require_relative 'attr_accessor_man'

module FerramentasDoJoao
    def self.included(base)
        base.extend(ClassMethods)
    end


#será incluido o CLassMethods para dentro de base usando extend
    module ClassMethods
    include AttrAccessorMan
        @@atributos = nil
        @@tabela = nil

        def atributos(attrs)
            @@atributos = attrs
            my_attr_accessor(*attrs.keys)
        end

        def tabela(name)
            @@tabela = name
        end

        def migrate
            raise ArgumentError, "Atributos MISSING" if @@atributos.nil?
            raise ArgumentError, "Tabela MISSING" if @@tabela.nil?

            conn = DBConnector.connection

            campos = @@atributos.map do |nome, tipo|
                tipo_sql = 
                case tipo
                when :string then "VARCHAR(255)"
                when :int then "INTEGER"
                when :datetime then "TIMESTAMP"
                else raise NotImplementedError, "O tipo \"#{tipo}\" nao e suportado"
                end
            "#{nome} #{tipo_sql}"
            end.join(", ")

            sql = "CREATE TABLE IF NOT EXISTS #{@@tabela} (id SERIAL PRIMARY KEY, #{campos});"
            conn.exec(sql)
            puts "Tabela '#{@@tabela}' criada (ou ja existe)."
        end
    end
end

 class Pessoa
     include FerramentasDoJoao
   
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


# joao = Pessoa.new(name: "João", age: 30, birthdate: "1995-02-03")
# joao.save

