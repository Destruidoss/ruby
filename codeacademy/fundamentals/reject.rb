# reject(&:to_s)
# reject { |value| value.to_s }
18.downto(0).reject(&:odd?).join(" ")
#downto reduz de 18 até 0
#reject(&:odd?) --> apenas positivos
#join(" ") separador