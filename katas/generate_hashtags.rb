def generate_hashtag(text)

    return false if text.empty?

    calculate = 140

    if text.length > calculate
        puts false
    end

    text.split.map(&:capitalize).join.prepend('#')

end
input = " Hello there thanks for trying my Kata"
puts generate_hashtag(input)
puts generate_hashtag('')






