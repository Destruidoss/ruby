=begin
Pegue 2 strings s1, s2 incluindo apenas letras de a a z. Retorne uma nova string ordenada (em ordem alfabética crescente), a mais longa possível, contendo letras distintas — cada uma obtida apenas uma vez — vindas de s1 ou s2.
=end

def longest(s1, s2)
  (s1 + s2).chars.uniq.sort.join
end
puts longest(gets.chomp, gets.chomp)

=begin

def longest(s1, s2)
s1 = gets.chomp
s2 = gets.chomp
s3 = (s1 + s2).chars.uniq.sort.join
return s3
end
puts longest("abc", "defg")

a primeira funcao esta da seguinte forma acima, fiz alteracoes

chars > converte uma string em array de caracteres
cada caractere vira um elemento do array com o chars.

uniq > remove elementos duplicados de um array.

sort > ordena elementos de um array

join > junta novamente os caracteres separados anteriormente por chars

sem return pois o ruby retorna a ultima expressao do metodo

=end