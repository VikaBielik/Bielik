#входные парамеры: длина и значение минимального квадрата(ЗМК)
#вывод: строка с рядом чисел
#(3, 9) #’3, 4, 5’
#(5, 30) #’6, 7, 8, 9, 10’
#(1, 1) #’1’
#(5, 0) #’1, 2, 3, 4, 5’
#(0, 234) # ‘’


def squarenum(count, maxsquare)
    ar = []
    a = Math.sqrt(maxsquare).ceil
    if a.kind_of?Integer
        a = a
    else
        a = (a + 1).round
        
    end
    for i in a..a + count - 1
        ar.push(i)
    end

return ar
end

print squarenum(count 5, maxsquare 30)

