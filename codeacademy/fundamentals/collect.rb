fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect { |x| x * 2 }

puts doubled_fibs

=begin
Ótimo! Existem vários métodos Ruby muito úteis que aceitam blocos. Um que ainda não abordamos é collect.

O collectmétodo pega um bloco e aplica a expressão contida nele a cada elemento de um array. Confira:

my_nums = [1, 2, 3]
my_nums.collect { |num| num ** 2 }
# ==> [1, 4, 9]


Se olharmos para o valor de my_nums, no entanto, veremos que ele não mudou:

my_nums
# ==> [1, 2, 3]

Copy to Clipboard

Isso ocorre porque .collectretorna uma cópia de my_nums, mas não altera (ou modifica ) o array original my_nums. Se quisermos fazer isso, podemos usar .collect!com um ponto de exclamação:

my_nums.collect! { |num| num ** 2 }
# ==> [1, 4, 9]
my_nums
# ==> [1, 4, 9]

Copy to Clipboard

Lembre-se de que !em Ruby significa "este método pode fazer algo perigoso ou inesperado!". Nesse caso, ele altera o array original em vez de criar um novo.