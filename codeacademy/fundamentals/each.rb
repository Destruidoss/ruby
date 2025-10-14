array = [1,2,3,4,5]

array.each do |x|
    x += 10
    print "#{x}"
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

=end