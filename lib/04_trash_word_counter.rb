require 'io/console'

text_string = File.read("lib/shakespeare.txt")
dico = File.read("lib/swearWords.txt").scan(/\w+/)

def occurence_word_to_hash (string, dico)
  string_array = string.downcase.split 
  occurence_hash = {}

  # On compte uniquement les occurences des mots
  dico.each{|word| occurence_hash[word] = string_array.count(word)}

  return occurence_hash
end

p occurence_word_to_hash(text_string, dico)