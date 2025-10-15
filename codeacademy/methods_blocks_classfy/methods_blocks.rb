# sao definidos com {} ou DO ou END
1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }

#################diff de blocos e metodos#################

#methodo capitalize uma palavra
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block vai capitalizar todo os elementos primeiros elementos de cada array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"




