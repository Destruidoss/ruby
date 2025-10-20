################################################################################
=begin
Cuidado com o passo

 henrança é um conceito complicado, então vamos analisá-lo passo a passo.

Herança é o processo pelo qual uma classe assume os atributos e métodos de outra, e é usada para expressar um relacionamento "é um" . Por exemplo, uma raposa de desenho animado é um mamífero de desenho animado, então uma classe CartoonFox poderia herdar de uma classe CartoonMammal.

No entanto, um Mago não é um Elfo, então não deveria herdar da classe Elfo (mesmo que tenham muitos atributos e métodos mágicos em comum). Em vez disso, tanto Mago quanto Elfo poderiam herdar da mesma classe Ser Mágico.

Confira o código no editor. Definimos uma classe, ApplicationError, bem como uma SuperBadErrorclasse que herda de ApplicationError. Observe que não definimos o display_errormétodo no corpo de SuperBadError, mas ele ainda terá acesso a esse método por herança. Clique em Executar para ver você mesmo!


=end
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error

##saida Error! Error!

################################################################################
=begin
sintaxe da herança é o sinal de menor recebendo em uma class

A classe derivada é a nova classe que você está criando e a classe base é a classe da qual essa nova classe herda. Você pode ler " <" como "herda de".


Criamos uma Applicationclasse no editor à direita. Crie sua própria classe, MyApp, que herda de Application. Não precisa inserir nada na definição da sua classe ainda!
=end
class Application
  def initialize(name)
    @name = name
  end
end

# Add your code below!

class MyApp < Application
end
=end


################################################################################
=begin
Às vezes, você desejará que uma classe que herda de outra não apenas assuma os métodos e atributos de sua classe pai, mas também substitua um ou mais deles.

Por exemplo, você pode ter uma Emailclasse que herda de Message.

Pode ter um sendmétodo que os envia, mas a versão por e-mail pode ter que identificar endereços de e-mail válidos e usar um monte de protocolos de e-mail que você Messagedesconhece. Em vez de adicionar um send_emailmétodo à sua classe derivada e herdar um sendmétodo que você nunca usará, você pode simplesmente criar explicitamente um sendmétodo na Emailclasse e fazer com que ele faça todo o trabalho de envio de e-mails.

Esta nova versão de substituirásend ( ou seja, substituirá) a versão herdada de qualquer objeto que seja uma instância de .Email

Vamos tentar um exemplo mais divertido (embora menos realista). Crie uma nova classe, Dragon, que herde de Creature. Dê à sua classe derivada um fightmétodo que substitua Creatureo de ; em vez de retornar "Soco nos lábios!", ele deveria returnretornar "Sopra fogo!".


=end
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!

class Dragon < Creature
  def fight 
    "Breathes fire!"
  end
end

################################################################################
=begin
Quando bom não é bom o suficiente

Por outro lado, às vezes você estará trabalhando com uma classe derivada (ou subclasse ) e perceberá que substituiu um método ou atributo definido na classe base dessa classe (também chamada de classe pai ou superclasse ) que você realmente precisa. Não se preocupe! Você pode acessar diretamente os atributos ou métodos de uma superclasse com a palavra-chave interna do Ruby super.

A sintaxe é semelhante a esta:

class DerivedClass < Base
  def some_method
    super(optional, args)
    # Some other stuff
  end
end


Quando você chama superde dentro de um método, isso diz ao Ruby para procurar na superclasse da classe atual e encontrar um método com o mesmo nome daquele que superestá sendo chamado. Se o encontrar, o Ruby usará a versão da superclasse do método.


    ex:
    Decidimos que queremos dar uns socos, afinal! Vamos fazer duas coisas:

Adicione puts "Instead of breathing fire..."como a primeira linha no nosso método Dragon's .fight
Substitua a instrução return dentro Dragonda definição de fightpela palavra-chave super. (Não é necessário passar nenhum argumento para super, já que Creatureo fightmétodo de não aceita nenhum.)

=end

class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
  def fight 
  puts "Instead of breathing fire..."
   super
  end
end

################################################################################
=begin
Só pode haver um!

Qualquer classe Ruby pode ter apenas uma superclasse. Algumas linguagens permitem que uma classe tenha mais de um pai, o que é um modelo chamado herança múltipla . Isso pode ficar muito feio muito rápido, e é por isso que Ruby não permite isso.

No entanto, há casos em que você deseja incorporar dados ou comportamentos de vários
m uma única classe, e Ruby permite isso através do uso de mixins . Aprenderemos sobre mixins em uma lição posterior! Por enquanto, demonstraremos o que acontece se você tentar fazer vária m Ruby.


    O código de demonstração que vamos mostrar inclui um truque interessante: se você quiser encerrar uma instrução Ruby sem ir para uma nova linha, basta digitar um ponto e vírgula. Isso significa que você pode escrever algo como:
    
    class Monkey
    end


    em apenas uma linha: class Monkey; end. Isso economiza tempo quando você está escrevendo algo muito curto, como uma definição de classe ou método vazia.


=end


################################################################################
=begin
Perfeito! Agora vamos simplificar um pouco as coisas com uma variável de classe.

Dê à sua Messageclasse uma @@messages_sentvariável de classe e defina-a como 0. No corpo do seu initializemétodo, incremente esse valor em 1 para que cada vez que um novo Messageobjeto for criado, @@messages_sentaumente em 1. Não crie nenhuma instância da sua classe ainda!


=end
class Message
@@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
end
################################################################################
=begin
Forjar um Objeto nas Chamas do Monte Rubi
Perfeito! Vamos criar uma instância da nossa Messageclasse.

class Message
@@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  
  end
end

my_message = Message.new("joao", "estevan")

class Email < Message
  def initialize(subject)
  super(@from, @to)
  end
end


=end
class Message

@@messages_sent = 0
def initialize(from, to)

@from = from
@to = to
@@messages_sent += 1

end
end

my_message = Message.new("joao", "estevan")


class Email < Message
def initialize(from, to)
super(from, to)
end
end
################################################################################
=begin

maquina Virtual

=end

class Machine
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def Machine.get_users
    @@users
  end
end
my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)
my_machine.create("groceries.txt")
your_machine.create("todo.txt")
puts "Users: #{Machine.get_users}"


################################################################################
=begin

Computador Virtual


=end
class Computer 
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} criado por #{@username} at #{time}"
  end

  def Computer.get_users
  @@users
  end
end

my_computer = Computer.new("Positivo", 123)
puts my_computer