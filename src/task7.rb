
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946]
    
def fibonacci(rows)

return fibonacci_by_length(rows[:length]) if rows.key?(:length)
return fibonacci_by_range(rows[:min], rows[:max]) if rows.key?(:min) and rows.key?(:min)
end

def fibonacci_by_length(length, a)
    arr = []
    arr << a.slice(0..length.to_i - 1)
end

def fibonacci_by_range(min, max, a)
    arr = []
    if min > max
        min, max = max, min
    end
a.each do |num|
    if num >= min and num <= max 
        arr << num
        break if num > max 
    end
end 
    return arr
end

hh1 = {:lenght => 4}
hh2 = {:min =>4, :max => 20}

puts fibonacci(hh2, a)
