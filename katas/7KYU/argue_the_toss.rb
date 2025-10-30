=begin 
Sua tarefa é escrever uma função que não tenha um número fixo de parâmetros. A função deve contar os argumentos que lhe foram passados ​​e retornar uma string especificando quantos argumentos foram passados ​​e quais foram eles.

Se a chamada da função for

anArgument("pigs", "giraffes", "unicorns");

A string retornada deve dizer

'You gave me 3 arguments and they are "pigs", "giraffes" and "unicorns".'

Se apenas um argumento for passado, a string deverá dizer

'You gave me 1 argument and it is "pigs".'

Se houver dois argumentos, a string deve dizer

'You gave me 2 arguments and they are "pigs" and "giraffes".'

Se não houver argumentos, a string deve dizer

'You didn't give me any arguments.'

Notas sobre pontuação e gramática
Há vírgulas após cada argumento, exceto o último e o penúltimo, que são separados por 'e'.
Os argumentos são apresentados entre aspas.
O singular: '1 argumento' em oposição aos múltiplos: '3 argumentos'
Concordância verbal: 'e é' em oposição a 'e eles são'





=end





def sing
  lyrics = []
  99.downto(1) do |n|
    bot = (n > 1) ? "#{n} bottles" : "1 bottle"
    botone = (n - 1 > 1) ? "#{n - 1} bottles" : (n - 1 == 1) ? "1 bottle" : "no more bottles"
    lyrics << "#{bot} of beer on the wall, #{bot} of beer."
    lyrics << "Take one down and pass it around, #{botone} of beer on the wall."
    lyrics << "" unless n == 1
  end
  lyrics << "No more bottles of beer on the wall, no more bottles of beer."
  lyrics << "Go to the store and buy some more, 99 bottles of beer on the wall."
  lyrics
end