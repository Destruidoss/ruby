def gould
  yield "yield something"
end

def gould2
  Enumerator.new do |el| 
    n = 0
    loop do
      el.yield n.to_s(2).count('1')
      n += 1
    end
  end
end


