#Iterando sobre um hash
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

languages.each { |x| puts "#{x}"}


#hash com each iterando(loop) apenas o primeiro
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each do | sub_array |
  sub_array.each do | y |
    puts y
  end
end

#iterando em duas  colunas do hash 
#tanto na chave quanto no valor
secret_identities = {
  "The Batman": "Bruce Wayne",
  "Superman": "Clark Kent",
  "Wonder Woman": "Diana Prince",
  "Freakazoid": "Dexter Douglas"
}

#pode ser feito de ambas as formas
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |_, name| 
  puts "#{name}"
end


##########################Hash_frequency###########
#iterando sobre um hash e arrays

puts "algo: "
text = gets.chomp
words = text.split

frequencies = Hash.new(0)
words.each { | x | frequencies[x] += 1}

frequencies = frequencies.sort_by do |word, count|
  puts word + " " + count.to_s
end

frequencies.reverse!



def teste1
  puts "algo: "
  text = gets.chomp
  words = text.split
  
  frequencies = Hash.new(0)
  words.each { | x | frequencies[x] += 1}
  
  frequencies = frequencies.sort_by 
    puts x + " " + y.to_s
  end
  frequencies.reverse!
end


puts "algo: "
text = gets.chomp
words = text.split

frequencies = Hash.new(0)
words.each { | x | frequencies[x] += 1}

frequencies = frequencies.sort_by do |word, count|
  puts word + " " + count.to_s
end

frequencies.reverse!