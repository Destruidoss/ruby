###solution 1

def solution(str)
  str.reverse
end

###solution 2
def solution(str=nil)
   str.reverse if !str.nil?
end

###solution 3
def solution(str)
  str.reverse!
end

solution('world')


