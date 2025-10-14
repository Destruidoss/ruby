puts "Texto para pesquisar: "
text = gets.chomp
puts "palavra para redigir: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REdigido "
  end
end




puts "Insira um texto para pesquisar:"
text = gets.chomp

puts "Palavras para redigir (separe por espaço):"
redact = gets.chomp.split(" ")

words = text.split(" ")

redacted_text = words.map do |word|
  if redact.map(&:downcase).include?(word.downcase)
    "Redigido"
  else
    word
  end
end

puts "\nTexto redigido:"
puts redacted_text.join(" ")