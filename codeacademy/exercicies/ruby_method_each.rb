=begin
Em Ruby, o .eachmétodo é usado para iterar sobre arrays e hashes. Isso permite que cada elemento em um array e cada par chave-valor em um hash sejam iterados.

=end

#Neste exemplo, o método each itera sobre cada cor no array colors e a imprime no console.

colors = ["red", "blue", "green", "yellow"]

colors.each { |color| puts color }
#Saída
#vermelho
#azul
#verde
#amarelo

#Ao iterar sobre hashes, duas variáveis ​​de espaço reservado são necessárias para representar cada par chave/valor.

polygons = {
  "pentagon" => 5,
  "hexagon" => 6,
  "nonagon" => 9
}

polygons.each do |shape, sides|
  puts "A #{shape} has #{sides} sides."
end
#Saída
#Um pentágono tem 5 lados.
#Um hexágono tem 6 lados.
#Um eneágono tem 9 lados.
