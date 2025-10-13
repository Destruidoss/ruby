print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "nada a fazer aqui!"
end
  
puts "Sua string é: #{user_input}"

# Em Ruby, include? é um método booleano que verifica se um objeto está contido numa coleção (como um array, string ou range) e retorna true se estiver, ou false se não estiver

# gsub! ou gsub
# O método gsub em Ruby é usado para substituir globalmente todas as ocorrências de um padrão numa string, se usado gsbu! ele altera o original