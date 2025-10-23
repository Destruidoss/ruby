#Exemplos de arrays e usos de #arrays, os comando abaixo podem ser executado no irb

ary = [ 1 , "dois" , 3.0 ] #=> [1, "dois", 3.0]
################################################################################
ary = Array . new     #=> [] 
Array . new ( 3 )        #=> [nil, nil, nil] 
Array . new ( 3 , true ) #=> [true, true, true]
################################################################################
Array.new(4){|n| n.to_s}
################################################################################
#este faz a soma de um array com outro array a cada indice que ele passa.
soma = arr.map.with_index { |v, indice| v + arra[indice] }
#sera preciso definir os valores antes para as variaveis arr
################################################################################

################################################################################
#criacao de uma matriz multidimensional, onde pode passar quantos arrays precisar dentro das chaves {}

table = Array.new(3){Array.new(3){Array.new(3)}}

################################################################################
#Um array também pode ser criado usando o método Array(), fornecido pelo Kernel , que tenta chamar to_ary e depois to_a em seu argumento.
Array({:a=>"a", :b=>"b"})

################################################################################

#Acessando elementos de um array
arr = [ 1 , 2 , 3 , 4 , 5 , 6 ]
arr[2]
arr[-3]
arr[2, 3]
arr[1..4]

arr.at(0)

################################################################################
#gerar um erro para indices fora do milites.
arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.fetch(3)

################################################################################
#verificando o ponto especifico  de um elemento do array
arr.at(-1)
arr.at(0)

################################################################################
#metodo de retornar o primeiro e ultimo elemento de um array
arr = ['a', 'b', 'c', 'd', 'e', 'f']
arr.first
arr.last

################################################################################


