=begin
O método strip em Ruby remove espaços em branco (ou outros caracteres especificados) do início e do final de uma string, e ele retorna uma nova string sem esses caracteres. Se quiser modificar a string original, use strip!. 
=end
nome = "   João   "
nome_formatado = nome.strip
puts nome_formatado
# Saída: João

email = "  exemplo@email.com \n"
email_formatado = email.strip
puts email_formatado
# Saída: exemplo@email.com

nome = "   Maria   "
nome.strip!
puts nome
# Saída: Maria