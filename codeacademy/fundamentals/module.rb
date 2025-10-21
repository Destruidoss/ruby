################################################################################
=begin

module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end
=end

################################################################################
=begin

é separar métodos e constantes em espaços nomeados. Isso é chamado (convenientemente) de "namespace" , e é assim que Ruby não confunde Math::PIe Circle::PI.

Viu os dois pontos que acabamos de usar? Isso se chama operador de resolução de escopo , que é uma maneira sofisticada de dizer que ele indica ao Ruby onde você está procurando por um trecho específico de código. Se dissermos Math::PI, o Ruby sabe que precisa procurar dentro do Mathmódulo para obter esse PI, e não qualquer outro PI(como o que criamos em Circle).

Vamos praticar um pouco com um módulo Ruby existente: Math.
Use o operador de resolução de escopo para putso valor PIdo Mathmódulo para o console.


=end
module Math::PI
  puts Math::PI
end

################################################################################

=begin
calguns modulos como Math, já estão presentes no interpretador. Outros precisam ser explicitamente introduzidos, no entanto, e podemos fazer isso usando require. Podemos fazer isso simplesmente digitando

require 'module'
Queremos usar o Datemódulo Ruby para mostrar a data de hoje, mas requireainda não o fizemos!
Vá em frente e require 'date'vá para a linha 1 para que o código na linha 3 funcione.



=end
require 'date'

puts Date.today


################################################################################
=begin

Mas podemos fazer mais do que apenas requireum módulo. Podemos também include!

Qualquer classe que includetenha um determinado módulo pode usar os métodos desse módulo!

Um bom efeito disso é que você não precisa mais prefixar suas constantes e métodos com o nome do módulo. Como tudo já foi extraído, você pode simplesmente escrever PIem vez de Math::PI.

    No nosso caso, queremos usar Math::cos, mas não queremos digitar Math::.

Por favor, include Mathna linha 2.
=end

class Angle
  include Math  ##incluido para chamar o modulo Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine

################modulo mixin #####################
=begin

=end
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

################################################################################
=begin
Agora você entende por que dissemos que os mixins poderiam nos dar a capacidade de imitar a herança de mais de uma classe: misturando características de várias, podemos adicionar qualquer combinação de comportamentos ao nosso modulo

Crie um módulo, MartialArts.

Dentro, defina um método chamado swordsmanque apenasputs "I'm a swordsman."

Na primeira linha interna Ninjae na primeira linha interna Samurai, include MartialArtspara misturar isso em ambas as classes Ninjae Samurai, dando a elas o swordsmanmétodo

=end
module MartialArts
  def swordsman
    puts "I'm a swordsman"
  end
end



class Ninja
include MartialArts
  def initialize(clan)
    @clan = clan
  end
end

class Samurai
include MartialArts
  def initialize(shogun)
    @shogun = shogun
  end
end

################################################################################
=begin


Enquanto a palavra-chave include"mistura" os métodos de um módulo no nível da instância (permitindo que instâncias de uma classe específica usem os métodos), a extendpalavra-chave "mistura" os métodos de um módulo no nível da classe . Isso significa que a própria classe pode usar os métodos, em oposição às instâncias da classe.

Confira o código no editor. Editamos extendcom TheHereAnd, ThePresentpermitindo que ele use o nowmétodo . Clique em Executar para ver o efeito!




module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

=end
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end

  def go 
  puts "agora"
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
TheHereAnd.go

################################################################################
=begin

Criamos uma Applicationclasse no editor. Adicione um publicmétodo chamado print_status. ApplicationNão puts "All systems go!"se esqueça de usar a publicpalavra-chave !

Lembre-se, tudo o que precisamos fazer para tornar um método público explicitamente é

class ClassName
  public
  def public_method
  end
end

=end

class Application

  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
    puts "All systems go!"
  end
end
################################################################################
=begin

Por fim, vamos colocar include nosso Languagesmódulo na Masterclasse (na linha 6) para que nossa linguagem favorita seja impressa no console.

Para incluir um módulo em uma classe, precisamos apenas digitar

include NomeDoModulo


module Languages
  FAVE = "Ruby" 
end

class Master
include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory
=end


################################################################################
=begin



