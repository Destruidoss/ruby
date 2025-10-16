#ordena um array comparando elementos em pares, utilizando o operador  (<=>) por padrão, ou um bloco definido caso queira. veja abaixo o exemplo
#teste.sorte_by do |teste, teste2|
# count
# end
#
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| 
firstBook <=> secondBook }

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| 
secondBook <=> firstBook }
puts books

# sort your fruits descending

fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! do |fruitOne, fruitTwo| 
  fruitTwo <=> fruitOne
end