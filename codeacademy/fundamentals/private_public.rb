################################################################################
=begin

private

Ruby permite que você crie explicitamente alguns métodos públicos outros privados... Métodos públicos permitem uma interface com o restante do programa; Eles dizem: "Ei! Pergunte-me se precisar saber algo sobre minha aula ou suas instâncias." Os métodos privados, por outro lado, são para você aulas Preview: Docs Classes são como projetos para a criação de objetos. Os objetos são frequentemente chamados de instâncias de uma classe. As classes definem as propriedades e métodos que os objetos criados a partir delas terão. Por exemplo, uma bola é uma classe e beisebol, futebol americano e basquete são instâncias da classe bola. A palavra-chave class seguida por um nome com a primeira letra maiúscula cria uma nova classe. A palavra-chave end encerra a definição da classe. Objetos, ou instâncias da classe, são criados chamando o novo método na classe. ruby class Ball # Propriedades e métodos da classe end ball1 = Ball.new para fazerem seu próprio trabalho sem serem incomodados. Eles não querem que ninguém pergunte nada, então se tornam inacessíveis!
=end
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  public 
     # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  # This method can't!
  private 
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number



################################################################################
=begin

private


=end