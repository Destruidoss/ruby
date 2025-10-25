=begin
 O método downto em Ruby é um método de iteração para inteiros que executa um bloco de código, contando para trás a partir de um número inicial até um valor final especificado, inclusive. É usado para fazer uma contagem regressiva, como em 10.downto(1) { |i| puts i }, que imprimiria de \(10\) a \(1\). 

=end

10.downto(1) do |contador|
  puts contador
end

#ou


"P".downto("L") { |x| puts x}

