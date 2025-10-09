print "Whats your name? " #aqui sera printado na tela para o usuario
first_name = gets.chomp 
=begin 
first_name = gets.chomp aqui sera feito a atribuicao do valor que o usuario digitou na variavel first_name 
=end
first_name.capitalize! #aqui sera feito o oposto do upcase, aqui sera feito a primeira letra ficar maiuscula apenas, mas depende de versoes do ruby
puts "Your Name is #{first_name}" #novamente printando na tela o valor que o usuario digitou