=begin
Em Ruby, um hash pode ser criado por meio de notação literal (porque estamos literalmente atribuindo os key=>valuepares que queremos no hash) ou atribuindo uma variável igual a Hash.newque gera um novo hash vazio.


=end
#Creating a hash through literal notation:
lunch = {
  "protein" => "chicken",
  "greens" => "lettuce",
  "organic?" => true
}

#Creating a hash through Hash.new
lunch = Hash.new
puts lunch # => {}
