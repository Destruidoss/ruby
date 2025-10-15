=begin
Em Ruby, um novo par chave-valor pode ser adicionado a um hash usando a notação de colchetes. A nova chave é colocada entre colchetes após o nome do hash e o valor é atribuído após o sinal de igual.


=end
#A notação #Bracket se aplica a qualquer hash, independentemente de como foi inicializado
teammates = Hash.new
teammates["forward"] = "Messi"

salary = {
  "starting" => 40000
}
salary["mid-level"] = 60000