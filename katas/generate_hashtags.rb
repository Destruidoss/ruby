def generate_hashtag(str)
  return false if str.strip.empty? || str.strip.nil?
  
  hash = str.split.map(&:capitalize).join.prepend('#')

  hash.length > 140 ? false : hash
end

print "Digite algo: "
input = gets.chomp
puts generate_hashtag(input)

=begin 
def generateHashtag(str)
  str = "#" << str.split.map(&:capitalize).join
  str.size <= 140 && str.size > 1 ? str : false
end
=end
=begin
def dotest(str, expected, msg="")
  it "str = #{str.inspect}" do
    actual = generate_hashtag(str)
    expect(actual).to eq(expected), "#{msg}\nexpected: #{expected.inspect}\n     got: #{actual.inspect}".strip
  end
end

describe "Fixed tests" do
  dotest("", false, "Expected an empty string to return false")
  dotest(" " * 200, false, "Still an empty string")
  dotest("Do We have A Hashtag", "#DoWeHaveAHashtag", "Expected a Hashtag (#) at the beginning.")
  dotest("Codewars", "#Codewars", "Should handle a single word.")
  dotest("Codewars Is Nice", "#CodewarsIsNice", "Should remove spaces.")
  dotest("Codewars is nice", "#CodewarsIsNice", "Should capitalize first letters of words.")
  dotest("code" + " " * 140 + "wars", "#CodeWars")
  dotest("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat", false, "Should return false if the final word is longer than 140 chars.")
  dotest("a" * 139, "#A" + "a" * 138, "Should work")
  dotest("a" * 140, false, "Too long")
end

=end

