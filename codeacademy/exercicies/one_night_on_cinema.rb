movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "O que você gostaria de fazer?"
puts "-- Digite add para adicionar um filme"
puts "-- Digite 'update' para atualizar um filme"
puts "--  Digite 'display' para exibir todos os filmes."
puts "-- Digite 'delete' para excluir um filme."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end





##########meu codigo ###############3
movies = {os_sem_florestas: 4}
puts "digita ai: "
choice = gets.chomp

case choice
  when 'add'
  puts "qual filme quer adicionar"
  title = gets.chomp
  puts "classifique o filme"
  rating = gets.chomp
  movies[title.to_sym] = rating.to_i
  movies = title == title ? "ja existe este" : "adicionado"
  puts "teste"
  when 'update'
  puts "updated"
  when 'display'
  puts "movies"
  when 'delete'
  puts "deleted"
  else 
  puts "Error!"
end