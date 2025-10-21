def count_sheep(array)
  array.count(true)
end
###solution 2
def countSheeps array
    array.count { |x| x == true }
end
###solution 3
def countSheeps array
    array.reduce(0) {|sum, sheep| sheep.nil? || !sheep ? sum : sum + 1 } 
end
###solution 3
def count_sheep(array)
  array
    .filter { _1 == true }
    .size
end