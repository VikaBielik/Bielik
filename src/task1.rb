def checkered_board(d, s, sumbol)
    arr =[ ]
    for i in 0...d
      for j in 0...s
        if (i + j) % 2 ==0
          arr << (' ')
        end
      end

    def star (d, s, sumbol)
      str = chess(d, s, symbol)
      return str.join 
    end
    print star [6, 6, '*']
    
