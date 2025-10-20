=begin
Por que alguns métodos aceitam um bloco e outros não? Isso ocorre porque métodos que aceitam blocos têm uma maneira de transferir o controle do método que os chama para o bloco e vice-versa. Podemos incorporar isso aos métodos que definimos usando a yield palavra-chave .

Confira o código no editor. Criamos uma série de putsinstruções para que você possa ver quando estamos no block_testmétodo e quando estamos no bloco passado a ele. Clique em Executar para ver o resultado!


=end

def blocks_test
    puts "Estamos no método"
    puts "cedendo ao bloco"
    yield
    puts "nos voltamos ao bloco"
end

blocks_test{puts ">>> Nos estamos no bloco"}


######################################333 outra forma de suar o yield#########################33333
=begin
Você também pode passar parâmetros para yield! Confira o exemplo no editor.

O yield_namemétodo é definido com um parâmetro, name.
Na linha 9, chamamos o yield_namemétodo e fornecemos o argumento "Eric"para o nameparâmetro. Como yield_namepossui uma yieldinstrução, também precisaremos fornecer um bloco.
Dentro do método, na linha 2, primeiro temos putsuma declaração introdutória.
Então cedemos ao bloco e passamos em "Kim".
No bloco, nagora é igual a "Kim"e putssaímos “Meu nome é Kim”.
De volta ao método, putsdescobrimos que estamos entre os rendimentos.
Em seguida, cedemos ao bloco novamente. Desta vez, passamos "Eric"o que armazenamos no nameparâmetro.
No bloco, nagora é igual a "Eric"e nós putssaímos “Meu nome é Eric”.
Por fim, putspublicamos uma declaração final.
=end


def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }

# Chame yield_namecom seu nome como parâmetro. Certifique-se de passar um bloco dizendo puts"Meu nome é #{seu nome aqui}!"

yield_name("Jamie") { |n| puts "My name is #{n}." }

############################################################################
=begin
Agora que sabemos como os métodos aceitam blocos usando a yieldpalavra-chave, vamos definir nosso próprio método e passar um bloco para ele!

Defina seu próprio método, double, que aceita um único parâmetro e retorna um bloco. Em seguida, chame-o com um bloco que multiplica o parâmetro numérico por 2. Você pode dobrar qualquer número que quiser!

putso resultado para ver seu rendimento em ação!

Seu código deve ser parecido com isto:

def method_name(parameter)
  yield parameter
end

method_name(argument) { block }

=end

def double(num)
  yield(num)
end

double(16) {|x| puts x * 2}




###################################################################################