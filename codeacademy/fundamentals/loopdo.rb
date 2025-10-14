i = 20
loop do
  i -= 1
  print "#{i}"
  break if i <= 0
end

# i = 0
# loop do
#     i += 1
#     print "#{i}"
#     break if i > 5
# end
i = 19
loop do
  i -= 1
  next if i % 2 == 0
  puts "#{i}"
  break if i <= 0
  end