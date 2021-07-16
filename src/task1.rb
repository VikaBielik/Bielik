def chessboard(l, w , s)
arr = ' '

line1 = (s + ' ') * (w / 2)
line1 << s if w.odd?
line2 = ' ' + line1.chomp(line1[-1])

for  i in 1.. (l / 2)
    answer << line1 + "\n"
    answer << line2 + "\n"
end

arr << line1 if l.odd?

return arr
end

    
