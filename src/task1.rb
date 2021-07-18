# l - длина(количество строк по вертикали)
# w - ширина(количество символов по вертикали)
# s - строка длиной 1 символ 

def chessboard(l, w, s)
    a = []
    str1 = (s + ' ') * (w/2)
    str1 << s if w.odd?
    str2 = ' ' + str1.chomp(str1[-1])
    for  i in 1.. (l / 2)
        a << str1 + "\n"
        a << str2 + "\n"
    end
    a << str1 if l.odd?
    return a
end

def play(l, w, s)
    str = chessboard(l, w, s)
    return str.join
end
print play(4, 12, "*")

