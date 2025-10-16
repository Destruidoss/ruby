#symbol
:teste

#exemplos de simbolos com hashs
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

# verificando a diferença entre symbol e string
puts "string".object_id
puts "string".object_id
# se for executado no irb mostraá o id do objeto e mostrara que #o symbol nao muda.
puts :symbol.object_id
puts :symbol.object_id


########CONVERSAO ENTRE SIMBOLOS E STRINGS############

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []

strings.each do |s|
    symbols.push(s.to_sym) #PODE usar O .to_sym ou .intern pra converter em symbol uma string
end
print symbols


########Comparando velocidade entre string e symbol############

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."


########select em simbolos e hashs para apresentar somente a chave ou o valor############

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select { |name, rating| rating > 3 }
puts good_movies
