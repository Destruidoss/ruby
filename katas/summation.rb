def summation(num)
    total = 0
    for i in 1..num
        total = total + i
        end
    return total
end

puts summation(2)

=begin
outra formas de resolver

def summation(num)
  i = 1
  sum = 0
  while i <= num do
    sum += i
    i += 1
  end
  sum  
end

def summation(num)
  (1..num).sum
end


enunciado
Escreva um programa que encontre a soma de todos os números de 1 a num (ambos inclusivos). O número será sempre um inteiro positivo maior que 0. Sua função precisa retornar apenas o resultado.
=end