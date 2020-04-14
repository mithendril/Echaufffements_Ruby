def is_multiple_of_3_or_5(numb)
  return (numb%3 == 0 || numb%5 == 0)
end

def sum_of_3_or_5_multiples(array)
  return array.inject(0) {|sum,numb| sum += numb}
end

def perform
  array = []
  1000.times {|numb| is_multiple_of_3_or_5(numb) ? array << numb : false}
  puts sum_of_3_or_5_multiples(array)
end

perform