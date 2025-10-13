################chars#############################################################
#metodo chars

#O que faz:
#Converte uma string em um array de caracteres, cada caractere vira um elemento do array.

#Exemplo:

str = "ruby"
arr = str.chars
puts arr.inspect
# => ["r", "u", "b", "y"]
#Resumo: string → array de caracteres

################sort############################################################
#metodo sort

#O que faz:
#Ordena os elementos do array em ordem crescente (alfabética ou numérica).

#Exemplo:

arr = ["d", "a", "c", "b"]
arr_sorted = arr.sort
puts arr_sorted.inspect
# => ["a", "b", "c", "d"]


#Resumo: array → array ordenado

#Em Ruby, sort não altera o array original (a menos que use sort!).

##############join###############################################################
#metodo join
#O que faz:
#Converte um array de volta em string, unindo todos os elementos.
#Pode receber um separador opcional.

#Exemplo:

arr = ["a", "b", "c"]
str = arr.join
puts str
# => "abc"

str2 = arr.join("-")
puts str2
# => "a-b-c"


#Resumo: array → string (opcionalmente com separador)

################uniq############################################################
#metodo uniq

###O que faz:
###Remove elementos duplicados de um array, mantendo a primeira ocorrência.

###Exemplo:

arr = ["a", "b", "a", "c", "b"]
arr_uniq = arr.uniq
puts arr_uniq.inspect
# => ["a", "b", "c"]


###Resumo: array → array sem duplicatas



# metodo to_s
5.to_s        #=> "5"

nil.to_s      #=> ""

:symbol.to_s  #=> "symbol"
#Usando o to_s , você pode converter praticamente qualquer coisa em uma string.

