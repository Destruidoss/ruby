=begin
 Blocos não são objetos
Por isso, os blocos não podem ser salvos em variáveis

Você pode pensar em uma proc como um bloco "salvo": assim como você pode dar um nome a um trecho de código e transformá-lo em um método, você pode nomear um bloco e transformá-lo em uma proc. Procs são ótimas para manter seu código DRY , que significa " Não Repita Você Mesmo " . Com blocos, você precisa escrever seu código sempre que precisar; com uma proc, você escreve seu código uma vez e pode usá-lo muitas vezes!

Criação: Você pode criar um Proc de várias maneiras:

Usando Proc.new { |args| ... }

Usando o atalho proc { |args| ... }

ou com bloco do , igual abaixo

=end
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)

puts (&multiples_of_3)

################################sintaxe prox##################################
=begin
O .floormétodo arredonda um float (um número com um decimal) para o inteiro mais próximo. Escreva um proc chamado round_downque fará esse arredondamento (adicionamos o código para passá-lo para floats.collect).
=end


floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new do |n| 
  n = n.floor
end


# Write your code above this line!
ints = floats.collect(&round_down)
print ints


################################sintaxe prox##################################
=begin

Sintaxe Proc

Procs são fáceis de definir! Basta chamar Proc.newe passar o bloco que deseja salvar. Veja como criaríamos um proc chamado cubeque eleva um número ao cubo (eleva-o à terceira potência):

cube = Proc.new { |x| x ** 3 }

Podemos então passar o proc para um método que, de outra forma, pegaria um bloco, e não precisamos reescrever o bloco repetidamente!

[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]


(Os métodos .collect!e .map!fazem exatamente a mesma coisa.)

O &é usado para converter o cubeproc em um bloco (já que .collect!e .map!normalmente recebem um bloco). Faremos isso sempre que passarmos um proc para um método que espera um bloco.
=end

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new { |x| x.floor }

# Write your code above this line!
ints = floats.collect(&round_down)
print ints


####################ssalvar nossos blocos como procs############################


=begin
Por que nos preocupar em salvar nossos blocos como procs? Há duas vantagens principais:

Procs são objetos completos, então eles têm todos os poderes e habilidades dos objetos. (Blocos não têm.)
Ao contrário dos blocos, os procs podem ser chamados repetidamente sem precisar ser reescritos. Isso evita que você tenha que redigitar o conteúdo do seu bloco sempre que precisar executar um trecho específico de código.

=end

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

# Change these three so that they use your new over_4_feet Proc
can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3





################################exemplo simple de proc##################################
=begin
Crie um método, greeter, que não aceite argumentos e yields para um bloco.

Crie um Proc, phrase, que coloque "Hello there!". Passe isso para greeterem vez de um bloco. (Não se esqueça de passar &phraseem vez de apenas phrase!)
=end

def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)



################################sintaxe prox##################################
=begin
Chamar um proc com um método não é tão complicado. No entanto, existe uma maneira ainda mais fácil.

Ao contrário dos blocos, podemos chamar procs diretamente usando .call o método do Ruby. Confira!
=end
hi = Proc.new { puts "Hello!" }

hi.call



################################sintaxe prox##################################
=begin 
Agora que você está aprendendo algumas das partes mais complexas da linguagem Ruby, pode combiná-las para realizar algumas mágicas verdadeiramente misteriosas. Por exemplo, lembra quando dissemos que você poderia passar o nome de um método Ruby com um símbolo ? Bem, você também pode converter símbolos em procs usando aquele pequeno e prático &. 

Ao mapear &:to_i cada elemento de
strings
Preview: Docs Loading link description
, transformamos cada string em um inteiro!

Usando o exemplo nas instruções como guia, use collectou mappara criar o strings_arraya partir do numbers_array. Cada elemento de strings_arraydeve ser a versão em string do elemento correspondente do numbers_array(ou seja, deve ir ["1", "2", "3"... "10"]).


=end

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#neste ponto é chamado um symbol para o map do to_s
strings_array = numbers_array.map(&:to_s)

puts strings_array


