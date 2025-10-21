module FerramentasDoJoao
    def my_attr_acessor(...)
        my_attr_writer(...)
        my_attr_reader(...)
    end

    def my_attr_writer(*args)
        args.each { |arg| define_method("#{arg}=" )}
        args.each do |arg|
            define_method("#{arg}=") do |value|
                instance_variable_set("@#{arg}", value)
            end
        end
    end

    def my_attr_reader(*args)
        args.each do |arg|
            define_method(arg) do
                instance_variable_get("@#{arg}")
            end
        end
    end
end

class Pessoa
    extend FerramentasDoJoao
    
    my_attr_acessor :name, :age
    # my_attr_writer :name, :age
    # my_attr_reader :name, :age
end

carlos = Pessoa.new
carlos.name = "Carlos"
carlos.age = 56
puts "nome do carlos é: #{carlos.name}"
puts "idade do carlos é: #{carlos.age}"
    
