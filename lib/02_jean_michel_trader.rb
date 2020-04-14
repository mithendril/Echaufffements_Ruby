# Méthode pour comparer les bénéfices fait en achetant le 1er jour et les mettres dans un tableau
def array_of_benefit_per_day (array, day)
  benefit_array = []
  (1..(array.length - 1 - day)).each {|count| benefit_array << (array[day+count] - array[day])}
  return benefit_array
end

# Méthode qui nous donne le meilleur jour pour acheter puis le meilleur jours pour vendre
def day_trader (array)
  # On initialise notre super tableau de tableau
  all_day_benefit_array = []
 
  # On applique la méthode à tous les élements du tableau sauf le dernier (pas de sens d'acheter et de vendre le meme jour) et on met ça dans un super tableau de tableau
  (array.length-1).times do |day|
    all_day_benefit_array << array_of_benefit_per_day(array, day)
  end

  # Quelle est la valeur max du super tableau de tableau ?
  max = all_day_benefit_array.flatten.max

  # Ou elle se trouve dans le super tableau de tableau ?
  buy_order = all_day_benefit_array.index{|x| x.include? max}
  sale_order = all_day_benefit_array[buy_order].index(max)

  # Quel jour on doit acheter et quel jour on doit vendre ? (en jour et non en position dans le tableau)
  return [buy_day = buy_order + 1 , sale_order = buy_day + sale_order + 1]
end