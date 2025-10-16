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

=begin
pets = Hash.new
pets["trevor"] = "cat"


