=begin
Em Ruby, arrays podem ser aninhados uns dentro dos outros, representando arrays multidimensionais. Um array pode conter outro array como se fosse qualquer outro objeto Ruby, como um Integer ou uma String.

=end

multi_array = [[0,1,2,3],[4.5, true, "hi"]]

# Acessando o array no índice 1
puts multi_array[1] # => [4.5, true, "hi"]

# Acessando o elemento no índice 0 dentro do array no índice 1
puts multi_array[1][0] # => 4.5