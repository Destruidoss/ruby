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


#solucao 1
def gould
  (0..).lazy.map {|i| i.to_s(2).count('1')}
end

#solucao 2
def gould
  Enumerator.new do |y|
    seq = [0]
    y << 0
    next_seq = []

    loop do
      n = seq[next_seq.size] + 1
      y << n
      next_seq << n
      if seq.size == next_seq.size
        seq += next_seq 
        next_seq = []
      end
    end
  end
end

#solucao 3

def gould
  Enumerator.new do |y|
    n = 0
    loop do
      y << n.to_s(2).count('1')
      n += 1
    end
  end
end

#solucao 4
def gould = (0..).lazy.map{ _1.digits(2).sum }


#solucao 5
def gould
  0.step.lazy.map{|n| n.to_s(2).count('1') }
end