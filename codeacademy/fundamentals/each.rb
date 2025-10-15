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


=begin

pode ser feito tambem o each da seguinte forma

item.each { |qualquercoisa| 
    #alguma coisa aqui de codigo
}

Geralmente por boas praticas digitar o .each{ |x| puts x}


each com atribuicao e multipplicacao de arrays

odds = [1,3,5,7,9]
odds.each do |x|
    x *= 2
    print "#{x}"
end


este é com maps simplificado
odds.map {|i| i*2}



o each tambem pode pegar o valor de uma variavel antes definida como um array, da seguinte forma:


puts "algo: "  #aqui imprimi na tela pro user
text = gets.chomp #aqui recebe o texto do input
words = text.split #aqui define as palavras

frequencies = Hash.new(0)
words.each { | x | frequencies[x] += 1}


=end
