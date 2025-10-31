require 'pg'
require_relative 'db_connector'
require_relative 'attr_accessor_man'

class JoaoRecord

    extend AttrAccessorMan
    attr_accessor :id
    def initialize(attrs)
        attrs.each { |key, value| send("#{key}=", value)}
    end

    def save!
        raise ArgumentError, "Atributos MISSING" if self.class.atributos.nil? || self.class.tabela.nil?
        
        puts "#{name} #{age} #{birthdate} #{self.class.atributos} #{self.class.tabela}"

        conn = DBConnector.connection
        column = self.class.atributos.keys
        values = column.map { |col| send(col) }

        
        if @id.nil?
            placeholders = (1..values.size).map { |i| "$#{i}"}.join(", ") 
            sql = "INSERT INTO #{self.class.tabela} (#{column.join(', ')}) 
                    VALUES (#{placeholders}) 
                    RETURNING id;"
            
            result = conn.exec_params(sql, values)
            @id = result[0]["id"].to_i
            puts "Registro salvo na tabela #{self.class.tabela} com id #{@id}."
        else 
            set_clause = column.map.with_index(1) { |c, i| "#{c} = $#{i}"}.join(", ")
            sql = "UPDATE #{self.class.tabela} 
                    SET #{set_clause} 
                    WHERE id = $#{values.size + 1}"
            result = conn.exec_params(sql, values << id)
            puts "Registro atualizado (id #{id})."
        end
    end

    def self.atributos(attrs = nil)
            unless attrs.nil?
                @atributos = attrs
                my_attr_accessor(*attrs.keys)
            end

            @atributos
        end

        def self.find!(id)
            raise ArgumentError, "Atributos faltando 1" if atributos.nil?
            raise ArgumentError, "tabela faltando 2" if tabela.nil?

            conn = DBConnector.connection
            column = atributos.keys.join(', ')
            sql = "SELECT #{column}, id FROM #{tabela} WHERE id = $1 LIMIT 1;"

            result = conn.exec_params(sql, [id])
            
            raise StandardError, "Não encontrado" if result.count == 0

            row = result[0]
            attrs = {}
            atributos.keys.each do |key| attrs[key] = row [key.to_s]
            end
            attrs[:id] = row['id'].to_i
                new(attrs)
        end
        def self.migrate!
            raise ArgumentError, "Atributos MISSING" if atributos.nil?
            raise ArgumentError, "Tabela MISSING" if tabela.nil?

            conn = DBConnector.connection

            campos = atributos.map do |nome, tipo|
                tipo_sql = 
                case tipo
                when :string then "VARCHAR(255)"
                when :int then "INTEGER"
                when :datetime then "TIMESTAMP"
                else raise NotImplementedError, "O tipo \"#{tipo}\" nao e suportado"
                end
            "#{nome} #{tipo_sql}"
            end.join(", ")

            sql = "CREATE TABLE IF NOT EXISTS #{tabela} (id SERIAL PRIMARY KEY, #{campos});"
            conn.exec(sql)
            puts "Tabela '#{tabela}' criada (ou ja existe). #{atributos}"
        end

        def self.tabela(name = nil)
            @tabela = name unless name.nil?
            @tabela
        end
end

 class Pessoa < JoaoRecord
   
     atributos(name: :string, age: :int, birthdate: :datetime)
     tabela :pessoas
 end

Pessoa.migrate!

criapessoa = Pessoa.new(name: "João", age: 30, birthdate: "1995-02-03")
criapessoa.save!
pessoa = Pessoa.find!(criapessoa.id)
puts pessoa.inspect
# pessoa.name = "aluizio"
pessoa.save!
