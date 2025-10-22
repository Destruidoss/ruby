=begin ####é usado para remover todas as ocorrências de caracteres específicos de uma string. Ele recebe uma lista de caracteres (como uma string) e remove todas as correspondências. 
O que ele faz:

Retorna uma nova string (não modifica a original).

Remove todos os caracteres que você especificar, em qualquer lugar da string.
=end

#exemplo simples

nome = "banana"

# Remove todas as ocorrências de 'a'
puts nome.delete('a')    # Saída: "bnn"

# Remove todas as ocorrências de 'a' E 'n'
puts nome.delete('an')   # Saída: "b"

# Exemplo com string original (imutável)
puts nome                # Saída: "banana"



##exemplo com uso de delete_prefix e chop

def remove_char(s)
  return '' if s.size <= 2  
  s.delete_prefix(s[0]).chop
end

#
b.size <= 2 || b == "" ? b.delete_prefix(b[0]).chop : b.delet
e_prefix(b[0]).chop

######### exemplo com o prefix
frase = "Olá mundo"

# Remove o prefixo 'Olá ' (apenas se estiver no começo)
puts frase.delete_prefix('Olá ') # Saída: "mundo"

# Não remove nada, pois 'mundo' não é um prefixo
puts frase.delete_prefix('mundo') # Saída: "Olá mundo"