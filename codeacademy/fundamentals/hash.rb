#hashs sao dicionarios
a = {a:1, b:1}
#se usar a.keys apos a instrucao acima,
#sera possivel ver a criação de um hash criados.

#para ver o tipo, a.class
#para ver o valor a.values

my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]
#para acessar um valor de uma chave de um hash pode ser feito conforme acima ou conforme mostra abaixo com ou sem o puts
creatures["birds"]


# para passar um valor padrao para um hash que nao queria que retorne nulo quando o mesmo nao obtiver o valor da chave necessario, basta passar um valor padrao para ele retornar
#O Padrão Seguro: Usando um Bloco (Hash.new { |hash, key| ... })
=begin


Conclusão: Para valores imutáveis (números, booleanos), use Hash.new(valor). Para valores mutáveis (Array, Hash), sempre use o bloco para criar uma nova instância para cada chave acessada.

imutaveis
pets = Hash.new
pets["trevor"] = "cat"

mutaveis

# Cria e atribui um Array vazio como padrão para a chave
agrupamentos = Hash.new { |hash, key| hash[key] = [] }

agrupamentos[:usuario_a] << "Permissão 1" # Define o Array para :usuario_a

puts agrupamentos[:usuario_a].inspect # Saída: ["Permissão 1"]
puts agrupamentos[:usuario_b].inspect # Saída: [] (O Array é novo e vazio)

=end
 #################### ATRIBUICAO de chave-valor############

#CCRIE O HASH como no exemplo abaixo
movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

#atribuir um valor ao hash movies, faça atribuicao de chave valor

 puts "digite um rating"
  rating = gets.chomp
  movies [title] = rating # aqui voce define o title como a chave do nome do filme e depois o valor que vai atribuir para o title#







  