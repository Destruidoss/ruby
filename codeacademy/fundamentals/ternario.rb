tempo = 25 # Simula a temperatura

# O puts imprime o resultado da expressão ternária
puts tempo > 30 ? "Está quente! Beba água." : "está agradável."


#experimento com ternario
#Vamos ser um pouco criativos. Escreva um laço que considere apenas putsos #valores pares de my_array. (Pontos extras se você usar um if!)

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each { | x | puts x = (x % 2 == 0) ? x : "y"}