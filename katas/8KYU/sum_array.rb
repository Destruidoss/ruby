=begin Descrição:
Escreva uma função que receba um array de números e retorne a soma dos números. Os números podem ser negativos ou não inteiros. Se o array não contiver nenhum número, você deverá retornar 0.

Exemplos
Entrada: [1, 5.2, 4, 0, -1]
Saída:9.2

Entrada: []
Saída:0

Entrada: [-2.398]
Saída:-2.398

Suposições
Você pode assumir que só lhe são fornecidos números.
Você não pode presumir o tamanho do array.
Você pode assumir que obtém um array e, se o array estiver vazio, retorna 0.
O que estamos testando
Estamos testando loops básicos e operações matemáticas. Este tutorial é para iniciantes que estão aprendendo loops e operações matemáticas.
Usuários avançados podem achar isso extremamente fácil e podem escrever facilmente em uma linha. 


=end

#### alternativa usada
def sum(numbers)
    return numbers == [] ? numbers = 0 : numbers.sum
end

#### alternativa refeita usando nil?
def sum(numbers)
    return numbers == nil? ? numbers = 0 : numbers.sum
end

####### alterativa 2
def sum(numbers)
    numbers.sum
end

####### alterativa 3
def sum(numbers)
  numbers.inject(0, :+)
end


####### alterativa 4

def sum(numbers)
  numbers.reduce(0, :+)
end

