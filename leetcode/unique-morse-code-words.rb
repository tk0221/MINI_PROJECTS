# @param {String[]} words
# @return {Integer}
MRS=[".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
def unique_morse_representations(words)
    h, res = {}, {}
    MRS.each_with_index do |code, i|
        h[(i+'a'.ord).chr] = code
    end
    words.each do |word|
        tmp = ""
        (0...word.size).each do |i|
            tmp += h[word[i]]
        end
        res[tmp] = 1
    end
    res.size
end
