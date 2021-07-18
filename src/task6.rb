# входные парамеры: длина и значение минимального квадрата(ЗМК)
# вывод: строка с рядом чисел
# вход: длина и значения минимального квадрата - целые числа
#(3, 9)   #’3, 4, 5’
#(5, 30)  # ’6, 7, 8, 9, 10’
#(1, 1)   # ’1’
#(5, 0)   # ’0, 1, 2, 3, 4’
#(0, 234) # ‘’


def squarenum(d, minsquare)
    ar = []
    a = Math.sqrt(minsquare).ceil
    if a.is_a?Integer
        a = a
    else
        a = (a + 1).round
    end
    for i in a..a + d - 1
        ar.push(i)
    end

return ar
end

p squarenum(5, 0)

