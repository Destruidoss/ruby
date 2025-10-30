=begin 
Complete a função que retorna a letra da música " 99 Bottles of Beer" como um array de strings : cada linha deve ser um elemento separado - veja o exemplo abaixo.

Nota: para evitar soluções com código fixo, o tamanho do seu código está limitado a 1000 caracteres.

Letra da música
99 garrafas de cerveja na parede, 99 garrafas de cerveja.
Pegue uma e passe adiante, 98 garrafas de cerveja na parede.

98 garrafas de cerveja na parede, 98 garrafas de cerveja.
Pegue uma e passe adiante, 97 garrafas de cerveja na parede.

...e assim por diante...

3 garrafas de cerveja na parede, 3 garrafas de cerveja.
Pegue uma e passe para o próximo, 2 garrafas de cerveja na parede.

Duas garrafas de cerveja na parede, duas garrafas de cerveja.
Pegue uma e passe para o próximo, uma garrafa de cerveja na parede.

Uma garrafa de cerveja na parede, uma garrafa de cerveja.
Pegue uma e passe para o próximo, sem mais garrafas de cerveja na parede.

Chega de garrafas de cerveja na parede, chega de garrafas de cerveja.
Vá à loja e compre mais, 99 garrafas de cerveja na parede.


Exemplo
[ "99 bottles of beer on the wall, 99 bottles of beer.",
  "Take one down and pass it around, 98 bottles of beer on the wall.",
  "98 bottles of beer on the wall, 98 bottles of beer.",

  ...and so on...

  "3 bottles of beer on the wall, 3 bottles of beer.",
  "Take one down and pass it around, 2 bottles of beer on the wall.",
  "2 bottles of beer on the wall, 2 bottles of beer.",
  "Take one down and pass it around, 1 bottle of beer on the wall.",
  "1 bottle of beer on the wall, 1 bottle of beer.",
  "Take one down and pass it around, no more bottles of beer on the wall.",
  "No more bottles of beer on the wall, no more bottles of beer.",
  "Go to the store and buy some more, 99 bottles of beer on the wall." ]



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




 def sing
   music = []
   
   ofbeer = "of beer on the wall"
   take = "Take one down and pass it around"
  100.downto(1) do |x|
    bot = (x > 1) ? "#{x - 1} bottles" : "1 bottle"
    music << "#{bot} #{ofbeer}, #{bot} of beer."
    music << "#{take}, #{bot}"

    music << "" unless x == 1
  end
  music << "No more bottles of beer on the wall, no more bottles of beer."
  music << "Go to the store and buy some more, 99 bottles of beer on the wall."
end

 def sing
   music = []
   
   ofbeer = "of beer on the wall"
   take = "Take one down and pass it around,"
  100.downto(2) do |x|
    bot = (x > 1) ? "#{x - 2} bottles" : "1 bottle"
    music << "#{bot.next} #{ofbeer}, #{bot} of beer."
    music << "#{take} #{bot} #{ofbeer}"

    music << "" || 0 unless x == 1

  end
  music << "No more bottles of beer on the wall, no more bottles of beer."
  music << "Go to the store and buy some more, 99 bottles of beer on the wall."

end

#solucao 1
OF_BEER = "of beer on the wall"
TAKE_ONE_DOWN = "Take one down and pass it around,"
GO_TO_THE_STORE = "Go to the store and buy some more, 99 bottles of beer on the wall."

def pluralify(str, number)
  number == 1 ? str : "#{str}s"
end

def bottles(x)
  "#{x.zero? ? "no more" : x} #{pluralify("bottle", x)}"
end

def onthewall(x)
  "#{bottles(x).capitalize} #{OF_BEER}, #{bottles(x)} of beer."
end

def takeonedown(x)
  return if x.zero?

  "#{TAKE_ONE_DOWN} #{bottles(x - 1)} #{OF_BEER}."
end

def sing
  99.downto(0)
    .map { |x| [onthewall(x), takeonedown(x)] }
    .flatten
    .compact << GO_TO_THE_STORE
end