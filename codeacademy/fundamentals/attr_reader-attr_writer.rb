
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

Aqui está um exemplo simples com a classe Pessoa:


=end


