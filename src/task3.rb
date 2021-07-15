trk = [{ 'vertices' => 'ABC',
    'a' => 10,
'b' => 20,
'c' => 22.36 },
{ 'vertices' => 'DET',
'd' => 12,
'e' => 15,
't' => 20 },
{ 'vertices' => 'QSD',
'q' => 12.2,
's' => 13.3,
'd' => 15.4 },
] 
  
def function(triangles)
 areas = []
 triangles.each do |tr| a, b, c = tr['vertices'].downcase.split(//)
 p = (tr[a] + tr[b] + tr[c])/2
 sqr = Math.sqrt (p * (p-tr[a]) * (p-tr[b]) * (p-tr[c]))
 areas.push([sqr, tr['vertices']]) 
  
end 
areas.sort!
answer = [] 
areas.each do |area| answer.push(area[1])
end
return answer 
end

p function (trk)
