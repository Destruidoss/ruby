print "Inteiro porfavor: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "Você escolheu um inteiro negativo!"
elsif user_num > 0
  puts "Você escolheu um inteiro positivo!"
else
  puts "voce escolheu zero!"
end