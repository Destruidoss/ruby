=begin O Range Inclusivo (..)
O operador .. (dois pontos) em Ruby cria um intervalo que inclui o valor inicial e o valor final.

Montando o s[1..-2]
Usando a string "palavra" como exemplo, vamos ver o que o range 1..-2 seleciona: 


aractere:	        p	a	l	a	v	r	a
Índice:	            0	1	2	3	4	5	6
Índice Negativo:	-7	-6	-5	-4	-3	-2	-1

Início: 1 → Começa no índice 1, que é o caractere 'a'. (Ignora o primeiro 'p' que esta no indice 0 ou -7).

Fim: -2 → Vai até o índice -2, que é o caractere 'r'. (Ignora o último 'a' que esta no indice 6 ou -1).

O resultado da operação é:
s = "palavra"
s[1..-2]  # => "alavr"
=end
s = "palavra"
s[1..-2]  
# saida => "alavr"