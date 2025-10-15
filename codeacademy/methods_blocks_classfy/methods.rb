def prime(n)
    puts "Isso nao é um primo. " unless n.is_a?(Integer)
    is_prime = true
    for i in 2..n-1
        if n % i == 0
            is_prime = false
        end
    end
    if is_prime
        puts "#{n} is prime!"
    else
        puts "#{n} is not prime."
    end
end
prime(2)
prime(9)


#################metodos simples usando each#################

def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 

#################metodos simples usando array#################
def array_1_to_10
  print (1..10).to_a
end
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#################metodos usando splat#################
#Splat Operator (Operador de Coleta/Expansão)
#Coleta argumentos posicionais em um Array.	
#Expande um Array em argumentos separados.	

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

#######metodos usando boolean para valores integer####
#este metodo greete apenas apresenta oque foi passado na variavel
def greeter(name)
    return name
end

#este metodo apresenta um boolean devido a comparacao com o ==
def by_three?(number)
  return number % 3 == 0
end

puts by_three?(13)

#################metodos simples#################
