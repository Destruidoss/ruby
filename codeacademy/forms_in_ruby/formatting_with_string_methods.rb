print "Whats your first name?"
first_name = gets.chomp
first_name.capitalize!

print "Whats your last name? "
last_name = gets.chomp
last_name.capitalize!

print "Whats your city? "
city =gets.chomp
city.capitalize!

print "What your state? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you from #{city}, #{state}!"

#se for passado uma mesma variavel varias vezes com o capitalize ele podera ser alterador usando criando uma copia ou apenas gerando um novo apartir do capitalize sem acento de esclamação