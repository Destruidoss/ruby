##exemplo com uso de delete_prefix e chop
=begin 
O método String#chop é usado para remover o último caractere de uma string.

O que ele faz:

Retorna uma nova string (não modifica a original).

Sempre remove o último caractere, exceto se o final for \r\n (CRLF), caso em que remove os dois.
=end

#exemplop simples
"teste".chop	Remove o último caractere ('e')	"test"


#exemplo mais complexo

def remove_char(s)
  return '' if s.size <= 2  
  s.delete_prefix(s[0]).chop
end

#
b.size <= 2 || b == "" ? b.delete_prefix(b[0]).chop : b.delet
e_prefix(b[0]).chop
