require 'io/console'

text_string = File.read("lib/shakespeare.txt")
dico = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

def occurence_word_to_hash (string, dico)
  string_array = string.downcase.split 
  occurence_hash = {}

  # Si on a besoin de compter les mots ou d'un de leur composant...
  # dico.each{|word| occurence_hash[word] = string.scan(/#{word}/).size}
  # Sinon on compte uniquement les occurences des mots
  dico.each{|word| occurence_hash[word] = string_array.count(word)}

  return occurence_hash
end

p occurence_word_to_hash(text_string, dico)