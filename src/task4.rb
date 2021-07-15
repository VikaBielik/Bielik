def palindr(n) 
    n == n.to_s.reverse.to_i 
end
num = 1234437
arr_num = num.digits
arr_num.size 
arr_num.each_cons(3){|n| p n}
 for i in arr_num.size..2 do arr_num.each_cons(3){|n| p n}
 end
arr_num.reverse
palindrom = []
arr_num.each do |n|
    if (arr_num.reverse.include?(n))
    print (n)
    end
end
