# Write your code on line 2!
favorite_language ||= "Ruby"
puts favorite_language

=begin

Este operador é um dos mais idiomáticos e eficientes em Ruby para a lógica de "memorização" (memoization) e para definir um valor padrão apenas se a variável ainda não tiver sido definida ou se for nil ou false.

1. O Que o ||= Significa
O operador ||= é uma forma concisa de escrever um bloco condicional if.

A expressão:

variavel ∣∣= valor
É exatamente equivalente a:

variavel = variavel ∣∣ valor
Que, por sua vez, é logicamente equivalente a:

if variavel is nil or false
then variavel = valor
end