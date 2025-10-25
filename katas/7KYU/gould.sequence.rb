def gould
  yield "yield something"
end

def gould
  Enumerator.new do |elder| 
    n = 0
    loop do
      elder.yield n.to_s(2).count('1')
      n += 1
    end
  end
end