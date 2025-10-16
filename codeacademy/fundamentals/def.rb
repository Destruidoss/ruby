# construindo proprios metodos
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

###########classificacao com arrays e metodos###########
def alphabetize (arr, rev = false)
  arr.sort!
end
number = [5,1,3,8]
puts alphabetize(number)



###classificacao com fluxo de controle### if else
def alphabetize(arr, rev = false)
  arr.sort!
  if rev == true
    arr.reverse!
  else
  	arr
  end
end

numbers = [3, 5, 1, 6]

puts alphabetize(numbers)

###classificacao com fluxo de controle### ternario
def alphabetize (arr, rev = false)
  arr.sort!
  rev ? arr.reverse! : arr
end
numbers = [5,1,3,8]
puts alphabetize(numbers)
#############################################