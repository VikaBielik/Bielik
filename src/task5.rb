# ассоциативный массив с ключами min , max
# ассициативный массив с инфо о победившем методе и количестве счастливых билетов для каждого
# способа подсчета 
# ключи целые числа, если min>max, то меняем местами 

def tickets( min, max ) 

    max, min = min, max if min > max  
    a = {
        :winner => '', 
        :lusky => [0, 0]
    }

    for number in min..max
       
        arr_num = number.digits.concat([0,0,0,0,0,0]).slice(0, 5)
        
        half_number_1 = arr_num.slice(0..2)
        half_number_2 = arr_num.slice(3..5)

        even_numbers = [] #четные цифры билета
        odd_numbers = [] #нечетные цифры билета

        arr_num.each do |num| 
            even_numbers << num if num.even?
            odd_numbers << num if num.odd?
        end

        a[:lusky][0] += 1 if  half_number_1.sum == half_number_2.sum #простой способ
        a[:lusky][1] += 1 if  even_numbers.sum == odd_numbers.sum # сложный способ
    end

    if a[:lusky][0] > a[:lusky][1]
        a[:winner] = 1 
    elsif a[:lusky][0] < a[:lusky][1]
        a[:winner] = 2 
    else
        a[:winner] = 'both' 
    end

    return  a

end
 
return  {:status => 'failed', :reason => 'Вы ввели не целочисленное число'}
       if min= Integer or max= Integer
return  {:status => 'failed', :reason => 'Числа должны быть натуральные и шестизначные'}
       if min < 0 or min > 999999 or max < 0 or max > 999999
