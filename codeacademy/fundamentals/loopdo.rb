i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

#com next if para mostrar apenas os negativos
i = 20
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i}"
  break if i <= 0
end

#imprimir 30 vezes Ruby
m = 0
loop do
  m += 1
  print "Ruby!"
  break if m == 30
end