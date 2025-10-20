=begin
Instanciando seu primeiro objeto
1 minuto
Perfeito! Agora estamos prontos para começar a criar objetos.

Podemos criar uma instância de uma classe apenas chamando .newo nome da classe, assim:

me = Person.new("Eric")


Crie uma variável, matz, e defina-a como igual à chamada .newda sua Personclasse. Passe .newo nome "Yukihiro" como seu único argumento.

=end

###############################class person###################################

=begin

=end
class Person
def initialize(name)
@name = name
end
end




################################################################################

=begin
Confira o código no editor. Veja como algumas variáveis ​​começam com $, @, ou @@? Isso ajuda a marcá-las como variáveis ​​globais, de instância e de classe (respectivamente). Explicaremos isso na próxima seção. Execute o código para ver como essas diferentes variáveis ​​funcionam!

=end
class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.




################################################################################

=begin
tornar uma variavel de dentro de uma classe global com o sinal de $ dollar
=end
class MyClass
 $my_variable = "Hello!"
end
puts $my_variable




################################################################################

=begin
O dobro do @, o dobro da classe

    Podemos criar uma classe variaveis niciando um nome de variável com dois @símbolos. As variáveis ​​de classe são anexadas a todo não apenas instâncias de classes, como:

    class MyClass
  @@class_variable
end

Como existe apenas uma cópia de uma variável de classe compartilhada por todas as instâncias de uma classe, podemos usá-la para realizar alguns truques interessantes em Ruby. Por exemplo, podemos usar uma variável de classe para controlar o número de instâncias daquela classe que criamos. Vamos fazer isso agora!

Vamos fazer três coisas:

Crie uma variável de classe, @@people_count, na linha 3, e defina-a como igual a 0.
Incremento @@people_countna linha 8.
Retorne @@people_countna linha 13 para que nossa putslinha 20 imprima o número de pessoas criadas até agora.

Para o primeiro passo, você só precisa declarar uma @@people_countvariável e defini-la como 0.

Para a segunda etapa, você só precisa incrementar @@people_countadicionando um a ela. Usaríamos
@@people_count += 1

Para o último passo, você só precisa de return @@people_count. Lembre-se, Ruby pode retornar implicitamente, então você pode simplesmente digitar @@people_countse quiser!



=end
class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"


################################################################################
=begin



=end

################################################################################
=begin



=end


################################################################################
=begin



=end


################################################################################

=begin



=end

################################################################################
=begin



=end


################################################################################
=begin



=end

################################################################################

=begin



=end


################################################################################