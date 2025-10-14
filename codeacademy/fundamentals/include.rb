print "Pleathe enter a thtring: " 
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  print "This string has an s."
end

# Tudo bem! Hora de adicionar um pouco de controle de fluxo.

# Para ifmetade do nosso ramo, queremos verificar se a entrada do usuário contém um "s".