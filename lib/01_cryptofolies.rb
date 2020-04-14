def cesar_change_letter (letter, cesar_key)

  is_ponctuation = ((letter.ord <= 46 && letter.ord >= 33) == true)
  is_ponctuation ? (cesar_ascii_letter = letter.ord) : (cesar_ascii_letter = letter.ord + cesar_key)

  upcase_condition = (cesar_ascii_letter > 90 && letter == letter.upcase)
  downcase_condition = (cesar_ascii_letter > 122 && letter != letter.upcase)
  (upcase_condition == true || downcase_condition == true) ? (return (cesar_ascii_letter - 26).chr) : (return cesar_ascii_letter.chr)
end

def cesar_change_word (word ,cesar_key)
  return word.chars.map{|char| cesar_change_letter(char,cesar_key)}.join
end

def cesar_cipher (string, cesar_key)
  return string.split.map{|word| cesar_change_word(word, cesar_key)}.join(" ")
end