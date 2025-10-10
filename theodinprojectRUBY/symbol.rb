:my_symbol

#acima esta um exemplo de symbol

"string" == "string"  #=> true

"string".object_id == "string".object_id  #=> false

:symbol.object_id == :symbol.object_id    #=> true
#acima esta a diferença de como sao armazenados na memoria entre symbol e string
=begin
Strings podem ser alteradas, então toda vez que uma string é usada, Ruby precisa armazená-la na memória, mesmo que já exista uma string com o mesmo valor. Símbolos, por outro lado, são armazenados na memória apenas uma vez, o que os torna mais rápidos em determinadas situações.

Uma aplicação comum em que símbolos são preferíveis a strings são as chaves em hashes.

Para criar um símbolo, coloque dois pontos no início de algum texto
:my_symbol
=end