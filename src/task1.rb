# l - длина(количество строк по вертикали)
# w - ширина(количество символов по вертикали)
# s - строка длиной 1 символ 
def chessboard(l, w, s)
 a =[]
 for i in 0...l 
    for j in 0...w 
        if (i + j)/2 == 0
            arr << (' ')
        end
    end
end

def start(l, w, s)
    str = chessboard(l,w,s)
    return str.join
end
end
print start(12,4, '*')

