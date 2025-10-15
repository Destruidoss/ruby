=begin
Em Ruby, um hash é uma coleção de pares chave-valor.

Um hash é representado por um conjunto de chaves ( {}) que contém pares chave-valor separados por vírgulas. Cada valor é atribuído a uma chave usando um hash rocket ( =>). Chamar o hash seguido do nome de uma chave entre colchetes captura o valor associado a essa chave.

=end

profile = {
    "name" => "Magnus",
    "profession" => "chess player",
    "ranking" => 1,
    "grandmaster?" => true
}

puts profile["name"] # => Magnus
