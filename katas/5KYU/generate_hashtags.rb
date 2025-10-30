def generate_hashtag(str)
  return false if str.strip.empty? || str.strip.nil?
  
  hashtag = str.split.map(&:capitalize).join.prepend('#')

  hashtag.length > 140 ? false : hashtag
end

print "Digite algo: "
input = gets.chomp
puts generate_hashtag(input)


#solucao 1

def generateHashtag(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end


#solucao 2

def generateHashtag(str)
  hashtag = '#' + str.scan(/\w+/).map(&:capitalize).join
  hashtag.length.between?(2, 140) ? hashtag : false
end


#solucao 3


def generateHashtag(str)
  str = str.split.map(&:capitalize).join
  (str.empty? or str.length > 139 or str=="#") ? false : "##{str}"
end

#solucao 4


def generateHashtag(str)
  str = str.split.map(&:capitalize).join
  if str.length > 139 || str.empty?
    return false
  else
    return "#" + str
  end
end

#solucao 5
def generateHashtag(str)
  hashtag = '#' + str.split.map(&:capitalize).join
  (2..140).include?(hashtag.size) && hashtag
end