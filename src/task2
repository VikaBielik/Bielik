envelope_1 = { "a" => 6.0, "b" => 5.0} 
envelope_2 = { "c" => 3.0, "d" => 4.0}

def vlog(envelope_1, envelope_2)
    if ((envelope_1 ["a"] < envelope_2["c"]) and (envelope_1 ["b"] < envelope_2 ["d"])) || ((envelope_1 ["a"] < envelope_2 ["d"]) and (envelope_1 ["b"] < envelope_2 ["c"]))
        return 2
    elsif ((envelope_2 ["c"] < envelope_1 ["a"]) and (envelope_2 ["d"] < envelope_1 ["b"])) || ((envelope_2 ["d"] < envelope_1 ["a"]) and (envelope_2 ["c"] < envelope_1 ["b"]))
        return 1
    else return 0
    end
end
def chek(envelope_1, envelope_2)
    vlog(envelope_1, envelope_2)
end

p chek(envelope_1, envelope_2)
