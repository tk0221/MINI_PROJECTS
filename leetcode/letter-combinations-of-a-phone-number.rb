# @param {String} digits
# @return {String[]}

HASH = {"2"=>["a", "b", "c"],
    "3"=>["d","e","f"],
    "4"=>["g","h","i"],
    "5"=>["j","k","l"],
    "6"=>["m","n","o"],
    "7"=>["p","q","r","s"],
    "8"=>["t","u","v"],
    "9"=>["w","x","y","z"]}

def letter_combinations(digits)
    return [] if digits.empty?
    @res =  []
    def recurse(rest, sofar)
        if rest.empty?
            @res << sofar
            return
        end
        first, remain = rest[0], rest[1..-1]
        HASH[first].each do |l|
            recurse(remain, sofar+l)
        end
    end
    recurse(digits,"")
    return @res    
end
