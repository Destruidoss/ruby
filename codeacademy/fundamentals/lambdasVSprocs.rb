################################sLAMBDA##################################
=begin
Se você acha que procs e lambdas são super parecidos, é porque são mesmo! Existem apenas duas diferenças principais.

Primeiro, hum
lambda
Prévia: Documentos Em Ruby, lambdas são blocos de código de função anônimos que podem receber zero ou mais argumentos. Eles podem então ser armazenados ou passados ​​em outros valores e chamados principalmente com o método #call. Se nenhum argumento for usado, use -> ou lambda: rb myLambda = lambda { puts "Hello, World!" } puts myLambda.call # Saída: Olá, mundo! Se 1 ou mais argumentos forem usados, use ->:
verifica o número de argumentos passados ​​a ele, enquanto um proc não. Isso significa que um lambda lançará um erro se você passar o número errado de argumentos, enquanto um processo ignorará argumentos inesperados e dará a ninguém qualquer um que esteja faltando.

Segundo, quando um lambda retorna, ele passa o controle de volta para o método de chamada; quando um proc retorna, ele o faz imediatamente, sem voltar para o método de chamada.

Para ver como isso funciona, observe o código no editor. Nosso primeiro método chama um proc; o segundo chama um lambda.


Viu como o procedimento diz que o Batman vencerá? Isso ocorre porque ele retorna imediatamente, sem retornar ao batman_ironman_procmétodo.

Nosso lambda, no entanto, retorna ao método após ser chamado, então o método retorna o último código que ele avalia:"Iron Man will win!"




=end
def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda


################################sLAMBDA##################################

=begin
Ótimo trabalho! Você escreveu o seu próprio
lambda
Preview: Docs In Ruby, lambdas are anonymous function code blocks that can take zero or more arguments. They can then be stored or passed in other values and called primarily with the #call method. If zero arguments are used, use either -> or lambda: rb myLambda = lambda { puts "Hello, World!" } puts myLambda.call # Output: Hello, World! If 1 or more arguments are used, use ->:
e vimos como passá-lo para um método. Agora é hora de você escrever uma lambda e passá-la para um método!

Se você acha que isso será muito parecido com o que já fez com procs, você está absolutamente certo. Assim como com procs, precisaremos colocar &no início do nome do nosso lambda quando o passarmos para o método, pois isso converterá o lambda no bloco que o método espera.

Essa symbolizelambda foi bem legal. Vamos improvisar com uma lambda que verifica se cada elemento em um array é um símbolo. Podemos fazer essa verificação com o .is_a?método , que retorna truese um objeto é do tipo do objeto nomeado e, falsecaso contrário:

:hello.is_a? Symbol
# ==> true

A palavra Symbol tem que ser escrita com letra maiúscula quando você estiver fazendo uma .is_a?verificação!

Crie um lambda, symbol_filter, que recebe um parâmetro e verifica se esse parâmetro .is_a? Symbol.

Crie uma nova variável chamada symbolse armazene o resultado da chamada my_array.selecte passe seu lambda.

puts symbolsno final do arquivo para ver o conteúdo final do array.


    ###############333
Seu código deve ser parecido com isto:

    symbol_filter = lambda { |x| x.magic! }
    my_array.select(&lambda_name)

Copy to Clipboard

onde x.magic!é onde você verifica se cada elemento do array é um símbolo e lambda_nameé o lambda que você está criando.
    ###############333

=end


my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols






################################sLAMBDA##################################
=begin
Toda essa conversa sobre blocos, procs e lambdas pode deixar você confuso. Vamos esclarecer exatamente o que cada um é:

Um bloco é apenas um pedaço de código entre do.. endou {}. Não é um objeto por si só, mas pode ser passado para métodos como .eachou .select.
Um proc é um bloco salvo que podemos usar repetidamente.
UM
lambda
Visualização: Descrição do link de carregamento de documentos
é como um proc, só que se importa com o número de argumentos que recebe e retorna ao método que o chamou, em vez de retornar imediatamente.
Obviamente, há muitos casos em que blocos, procs e lambdas podem fazer um trabalho semelhante, mas as circunstâncias exatas do seu programa ajudarão você a decidir qual deles você deseja usar.
=end






################################sLAMBDA##################################

=begin
O odds_n_endsarray está cheio de todos os tipos de objetos, mas queremos apenas os inteiros (números sem bits decimais).

Crie uma nova variável, ints, e armazene o resultado da chamada odds_n_ends.selectdo método com um bloco que verifica se o elemento .is_a? Integer.

puts intsno final do arquivo para ver o conteúdo final do array.
=end

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

# Add your code below!

ints = odds_n_ends.select {|x|x.is_a? Integer}

puts ints


################################sLAMBDA##################################
=begin
Crie um proc chamado under_100que verifica se um número passado é menor que 100. (Trataremos da passagem do .selectmétodo para esse proc no próximo exercício — não precisaremos fazer nada com o agesarray ainda.)


=end
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |x| x < 100 }



################################sLAMBDA##################################

=begin
Agora usaremos o agesarray. Crie uma variável chamada youngsterse defina-a como igual à chamada .selectem ages, e passe sua under_100proc para filtrar as idades menores que cem. Lembre-se de passar &under_100para converter sua proc em um bloco!

puts youngstersno final do arquivo para ver o conteúdo final do array.

Sua sintaxe deve ser semelhante a esta:

    youngsters = ages.select(&your_proc)

Copy to Clipboard

Onde your_procestá o under_100proc? Não se esqueça do "e" comercial!
=end


ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |x| x < 100 }
youngsters = ages.select(&under_100)

puts youngsters



################3o mesmo porem constando com bloco do ao inves do proc.new normal

ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!

under_100 = Proc.new do |x|
 x < 100
end
youngsters = ages.select(&under_100)

puts youngsters




################################sLAMBDA##################################

=begin
Crie um lambda chamado first_halfque verifica se um valor de hash é menor que (ou seja, anterior no alfabeto a) "M". (Não é necessário fazer nada com o crewhash ainda.) Certifique-se de usar "M" maiúsculo, pois verificaremos nomes em maiúsculas! Como ele verificará um hash, seu lambda deve incluir, |key, value|em vez de apenas |value|.

Lembre-se de que a sintaxe lambda é assim:

my_lambda = lambda { |k,v| # code }

ou

my_lambda = lambda do |k,v|
  # code
end

Onde # code está o bit que verifica se o valor do hash é < "M".

=end
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y<"M"}



################################sLAMBDA##################################
=begin
Para finalizar, vamos criar uma variável chamada a_to_me defini-la como "call .selecton crew" e passar seu first_halflambda para filtrar os nomes que vêm antes de "M" no alfabeto. Lembre-se de passar &first_halfpara converter seu lambda em um bloco!

puts a_to_mno final do arquivo para ver o conteúdo final do array.


=end
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y<"M"}
a_to_m = crew.select(&first_half)

puts a_to_m


################################sLAMBDA##################################
=begin
Agora usaremos o agesarray. Crie uma variável chamada youngsterse defina-a como igual à chamada .selectem ages, e passe sua under_100proc para filtrar as idades menores que cem. Lembre-se de passar &under_100para converter sua proc em um bloco!

puts youngstersno final do arquivo para ver o conteúdo final do array.

Sua sintaxe deve ser semelhante a esta:

    youngsters = ages.select(&your_proc)

Copy to Clipboard

Onde your_procestá o under_100proc? Não se esqueça do "e" comercial!
=end



################################sLAMBDA##################################
=begin
Agora usaremos o agesarray. Crie uma variável chamada youngsterse defina-a como igual à chamada .selectem ages, e passe sua under_100proc para filtrar as idades menores que cem. Lembre-se de passar &under_100para converter sua proc em um bloco!

puts youngstersno final do arquivo para ver o conteúdo final do array.

Sua sintaxe deve ser semelhante a esta:

    youngsters = ages.select(&your_proc)

Copy to Clipboard

Onde your_procestá o under_100proc? Não se esqueça do "e" comercial!
=end

################################sLAMBDA##################################
