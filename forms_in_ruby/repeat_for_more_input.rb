print "What is your last name? "
last_name = gets.chomp
last_name.capitalize!
#a diferença entre capitalize! e capitalize é que o capitalize! modifica a string original, enquanto o capitalize cria uma nova string com a modificação, sem alterar a original.
print "Whats your city? "
city = gets.chomp
city.capitalize!

print "What state you are from? "
city = gets.chomp
city.upcase!