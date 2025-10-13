=begin
Pegue 2 strings s1, s2 incluindo apenas letras de a a z. Retorne uma nova string ordenada (em ordem alfabética crescente), a mais longa possível, contendo letras distintas — cada uma obtida apenas uma vez — vindas de s1 ou s2.
=end

def longest(s1, s2)
s1 = gets.chomp
s2 = gets.chomp
s3 = (s1 + s2).chars.uniq.sort.join
return s3
end
puts longest("abc", "defg")

# def longest(s1, s2)
#   s3 = (s1 + s2).chars.uniq.sort.join
# end