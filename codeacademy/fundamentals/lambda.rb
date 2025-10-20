################################sLAMBDA##################################
=begin

Assim como os procs, os lambdas são objetos. As semelhanças não param por aí: com exceção de um pouco de sintaxe e algumas peculiaridades comportamentais, os lambdas são idênticos aos procs.

lambda { puts "Hello!" }

É quase o mesmo que

Proc.new { puts "Hello!" }

No exemplo à baixo, quando passamos o lambda para lambda_demo, o método chama o lambda e executa seu código.



=end

def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })




################################sLAMBDA##################################
=begin
Lambdas são definidas usando a seguinte sintaxe:

lambda { |param| block }

Lambdas são úteis nas mesmas situações em que você usaria um proc. Abordaremos as diferenças entre lambdas e procs no próximo exercício; enquanto isso, vamos praticar um pouco com o
lambda
Preview: Docs Loading link description
sintaxe.


=end
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda {|x| x.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

################################sLAMBDA##################################
=begin
Vamos improvisar com uma lambda que verifica se cada elemento em um array é um símbolo. Podemos fazer essa verificação com o .is_a?método , que retorna truese um objeto é do tipo do objeto nomeado e, falsecaso contrário:

  :hello.is_a? Symbol
# ==> true

A palavra Symboltem que ser escrita com letra maiúscula quando você estiver fazendo uma .is_a?verificação!

Crie um lambda, symbol_filter, que recebe um parâmetro e verifica se esse parâmetro .is_a? Symbol.

Crie uma nova variável chamada symbolse armazene o resultado da chamada my_array.selecte passe seu lambda.

puts symbolsno final do arquivo para ver o conteúdo final do array.
  #pode ser feito parecido com isso:

      symbol_filter = lambda { |x| x.magic! }
    my_array.select(&lambda_name)


=end

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols



################################sLAMBDA##################################
=begin

=end





################################sLAMBDA##################################
=begin

=end





################################sLAMBDA##################################
=begin

=end




################################sLAMBDA##################################