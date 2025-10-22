=begin Seu objetivo é escrever uma função que remova o primeiro e o último caracteres de uma string. Você recebe um parâmetro, a string original.

Importante: Sua função deve manipular strings de quaisquer length ≥ 2caracteres. Para strings com exatamente 21 caractere, retorne uma string vazia. 

Exemplos
'eloquent' --> 'loquen'
'country'  --> 'ountr' 
'person'   --> 'erso'
'ab'       --> '' (empty string)
'xyz'      --> 'y'
Requisitos
A string de entrada sempre terá pelo menos 2 caracteres
Para strings com exatamente 2 caracteres, retorne uma string vazia
Para strings com 3 ou mais caracteres, remova o primeiro e o último caractere
A função deve manipular strings contendo letras, números e caracteres especiais
Casos de Teste
Sua solução será testada em relação a:

Funcionalidade básica com palavras comuns
Casos extremos com strings de 2 e 3 caracteres
Strings contendo números e caracteres especiais
Casos de teste aleatórios de comprimentos variados



=end
#### alternativa usada
def remove_char(s)
    return s.size <= 2 ? s = '' : s[1..-2]
end

####alternativa 1
def remove_char(s)
  return '' if s.size <= 2  
  s.delete_prefix(s[0]).chop
end
####### alterativa 2
b.size <= 2 || b == "" ? b.delete_prefix(b[0]).chop : b.delet
e_prefix(b[0]).chop


#####alternativa 3
def remove_char(s)
  s[1...-1]
end

####alternativa 4
def remove_char(s)
  word = s.split('')
  word.pop  # configura parecido com o split criando um novo array
  word.shift  
  word.join
end