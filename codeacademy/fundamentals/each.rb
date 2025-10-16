array = [1,2,3,4,5]

array.each do |x|
    x += 10
    print "#{x}"
end

#each com iteraçao(loop)
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end

#each com iteracao em um unico each para hashs
matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}
matz.each { |x, y| puts y}
#neste caso imprimi somente o value e nao o nome de sua chave


=begin

pode ser feito tambem o each da seguinte forma

item.each { |qualquercoisa| 
    #alguma coisa aqui de codigo
}

Geralmente por boas praticas digitar o .each{ |x| puts x}



##########################
object.method { |placeholder| action }
exemplo de sintaxe

each com atribuicao e multipplicacao de arrays

odds = [1,3,5,7,9]
odds.each do |x|
    x *= 2
    print "#{x}"
end

each de multiplicacao de valores de arrays simplificado com um bloco
my_array = [1, 2, 3, 4, 5]

my_array.each { |x| puts x *= x }



este é com maps simplificado
odds.map {|i| i*2}



o each tambem pode pegar o valor de uma variavel antes definida como um array, da seguinte forma:


puts "algo: "  #aqui imprimi na tela pro user
text = gets.chomp #aqui recebe o texto do input
words = text.split #aqui define as palavras

frequencies = Hash.new(0)
words.each { | x | frequencies[x] += 1}


=end
