#Входные параметры: ассоциативный массив с ключами min и max, либо с ключем length
#Выход: массив чисел
#({ length => 2}) # [1, 1]
#({ length => 1}) # [1]
#({ length => 0}) # []
#({ min => 4, max => 20}) # [5, 8, 13]
#({ min => 3, max => 21}) # [3, 5, 8, 13, 21]
#({ min => 21, max => 3}) # [3, 5, 8, 13, 21]

a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]

def fibonacci(row)  
 return fibonacci_length(row[:length]) if row.key?(:length)
 return fibonacci_range(row[:min], row[:max]) if row.key?(:min) and row.key?(:min)
end

def fibonacci_length(length) #длина
 arr = []
 arr << a.slice(0..length.to_i - 1)
 return arr
end

def fibonacci_range(min, max) #диапазон
 arr = []
  if min > max
   min, max = max, min
  end
 arr.each do |num|
    if num >= min and num <= max 
     arr << num
     break if num > max 
     end
    end 
 return arr
 
end

hh1 = {:lenght => 1}
hh2 = {:min =>3, :max => 21}

puts fibonacci(hh2)


