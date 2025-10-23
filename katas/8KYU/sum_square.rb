=begin 
Complete a função de soma quadrada para que ela eleve ao quadrado cada número passado e então some os resultados.

Por exemplo, para [1, 2, 2] ele deve retornar 9porque
1² + 2² + 2² = 9
=end


#### alternativa usada
def square_sum(numbers)
  numbers.map { |x| p x **= 2 }.sum
end
#Precisa iterar por cada um, depois mutiplicar usando ** para
# passar por cada elemento do array multiplicando duas vezes para ser
# elevado ao quadrado
# usa o map para iterar atribuindo o valor ao array original
# e depois use o sum para somar tudo que esta no array, e será
# retornado a soma de todos os elementos do array
# o p não é necessario pois

#### alternativa 2
def squareSum(numbers)
  numbers.map {|n| n*n}.reduce(:+)
end

#### alternativa 3

def squareSum(numbers)
  numbers.sum {|x| x * x}  
#pode ser feito sem o map passando apenas o bloco e o sum anteriormente.
end

#### alternativa 4

def squareSum(numbers)
  numbers.reduce { |s, n| s+=n**2 }
end

#### alternativa 5

def squareSum(numbers)
  numbers.sum(&:abs2)
end

### alternativa chat gpt
somatoria = arr.reduce(0) do |total, x|
  total + (x ** 2)
end