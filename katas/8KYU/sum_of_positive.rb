=begin 
Tarefa
Você obtém uma matriz de números e retorna a soma de todos os positivos.

Exemplo
[1, -4, 7, 12]=>
1+7+12=20
Observação
Se não houver nada para somar, a soma padrão será 0.
=end

# alternativa usada
def positive_sum(arr)
 arr.map { |x| x < 0 ? x = 0 : x }.sum
end

#alternativa refatorada usando select
def positive_sum(arr)
  arr.select { |x| x > 0 }.sum
end

# alternativa 2
def positive_sum(arr)
  arr.select{|x| x > 0}.reduce(0, :+)
end

#alternativa 3
def positive_sum(arr)
  arr.select(&:positive?).sum
end

#alternativa 4
def positive_sum(arr)
  arr.select(&:positive?).inject(0,:+)
end

