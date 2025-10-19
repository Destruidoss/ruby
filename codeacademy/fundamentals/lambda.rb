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

=end




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