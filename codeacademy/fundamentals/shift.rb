####POP METHOD
def remove_char(s)
  word = s.split('')
  word.pop  
  # o pop faz o mesmo que o shift, retornando o ultimo valor que foi #removido de um array
  word.shift  
   # o shift faz o mesmo que o pop, retornando o primeiro valor que #foi removido de um array
  word.join
end

#shift e pop sao iguais, eles removem alterando o array original