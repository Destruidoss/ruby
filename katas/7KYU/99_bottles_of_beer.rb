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

