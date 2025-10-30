=begin O ácido desoxirribonucleico (DNA) é uma substância química encontrada no núcleo das células e carrega as "instruções" para o desenvolvimento e funcionamento dos organismos vivos.

Se você quiser saber mais: http://en.wikipedia.org/wiki/DNA

Em sequências de DNA, os símbolos "A" e "T" são complementares entre si, assim como "C" e "G". Sua função recebe um lado do DNA (sequência, exceto em Haskell); você precisa retornar o outro lado complementar. Uma sequência de DNA nunca está vazia ou não existe DNA algum (novamente, exceto em Haskell).

Exercícios semelhantes podem ser encontrados aqui: http://rosalind.info/problems/list-view/ (fonte)

Exemplo: ( entrada --> saída )

"ATTGC" --> "TAACG"
"GTAT" --> "CATA" 


=end


def DNA_strand(dna)
   b = dna.upcase # trata as entradas minusculos
   c = b.tr('ATCG', 'TAGC')
  return c
end
# O tr mapeia todos os caracteres do 1º argumento (ATCG)
  # para os respectivos caracteres no 2º argumento (TAGC) simultaneamente.
  # A -> T, T -> A, C -> G, G -> C
## REFATORADO
  def DNA_strand(dna)
   dna = dna.tr('ATCG', 'TAGC').upcase
  return dna
end

## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## ## 

# solucao 1
def DNA_strand(dna)
  dna.gsub(/[ATGC]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end


#solucao 2

def DNA_strand(dna)
  dna.upcase!
  result =""
  dna.chars.each do |s|
    case s
      when "A" then result += "T"
      when "T" then result += "A"
      when "G" then result += "C"
      when "C" then result += "G"
      else
        puts "Invalid DNA"
     end
    end
    result
 end


#solucao 3

$pairs = {'A'=>'T','T'=>'A','C'=>'G','G'=>'C'}
def DNA_strand(dna)
  dna.chars.map{|c| $pairs[c] }.join
end


#solucao 4
def DNA_strand(dna)
  complement = { 'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C' }
  dna.gsub(/[ATCG]/) { |base| complement[base] }
end

#solucao 5
def DNA_strand(dna)
  #your code here
  a = {'A'=>'T','T'=>'A','G'=>'C','C'=>'G'}
  dna.split("").collect{|x| a[x]}.join
end

#solucao 6

def DNA_strand(dna)
  #your code here
  switch = {
  "A" => "T",
  "T" => "A",
  "G" => "C",
  "C" => "G"
  }
  dna.gsub(/\w/, switch)
end

#solucao 7
def DNA_strand(dna)
  pairs = { A: 'T', T: 'A', C: 'G', G: 'C' }
  
  dna.chars.map { |char| pairs[char.to_sym] }.join
end