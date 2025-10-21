
################################################################################
=begin

leitor_de_atributo, escritor_de_atributo

Vimos na licao sobre classes que Ruby precisa de métodos para acessar atributos. Por exemplo, se quisermos acessar uma @namevariável de instância, temos que escrever algo como
def name
  @name
end

Bem, não mais! Podemos usar attr_readerpara acessar uma variável e attr_writeralterá-la. Se escrevermos

class Person
  attr_reader :name
  attr_writer :name
  def initialize(name)
    @name = name
  end
end

Ruby faz algo assim para nós automaticamente:

def name
  @name
end

def name=(value)
  @name = value
end

=end

class Person
  attr_accessor :name
  attr_accessor :job
  attr_accessor :job
  
  def initialize(name, job)
    @name = name
    @job = job
  end
end

################################################################################
=begin

Os acessores (attr_reader, attr_writer, attr_accessor) são métodos em Ruby que simplificam a criação dos getters e setters para variáveis de instância, mantendo o encapsulamento.

attr_reader	Método nome	Ler o valor de @nome	puts obj.nome
attr_writer	Método nome=	Escrever/Mudar o valor de @nome	obj.nome = "Novo"
attr_accessor	Ambos (nome e nome=)	Ler e Escrever o valor de @nome	obj.nome = "Novo"; puts obj.nome


Aqui está um exemplo simples com a classe Pessoa:
=end
class Pessoa
  # 1. attr_reader :nome
  # Cria o método público #nome (GETTER) para ler a variável @nome.
  attr_reader :nome
  
  # 2. attr_writer :idade
  # Cria o método público #idade= (SETTER) para escrever na variável @idade.
  attr_writer :idade
  
  # 3. attr_accessor :cidade
  # Cria AMBOS: o GETTER (#cidade) e o SETTER (#cidade=) para a variável @cidade.
  attr_accessor :cidade
  
  def initialize(nome, idade, cidade)
    @nome = nome
    @idade = idade
    @cidade = cidade
  end
  
  # Note: Se quisermos ler @idade, precisamos de um método manual, 
  # já que 'attr_writer' só permite ESCREVER.
  def qual_a_idade
    @idade
  end
end
#########
pessoa = Pessoa.new("Alice", 28, "Lisboa")

puts "--- 1. attr_reader (:nome) ---"
# Pode LER, mas não pode ESCREVER
puts "Nome: #{pessoa.nome}"  # Chama o método GETTER 'nome'
# pessoa.nome = "Bob"        # ERRO! Não há método SETTER 'nome='

puts "\n--- 2. attr_writer (:idade) ---"
# Pode ESCREVER, mas não pode LER (diretamente)
pessoa.idade = 29          # Chama o método SETTER 'idade='
puts "Nova Idade: #{pessoa.qual_a_idade}" # Acesso via método manual, pois o READER não existe

puts "\n--- 3. attr_accessor (:cidade) ---"
# Pode LER e ESCREVER (mais comum)

# LER (Getter)
puts "Cidade Original: #{pessoa.cidade}"

# ESCREVER (Setter)
pessoa.cidade = "Porto" 

# LER novamente para confirmar a mudança
puts "Nova Cidade: #{pessoa.cidade}"


