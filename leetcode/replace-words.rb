# @param {String[]} dict
# @param {String} sentence
# @return {String}
class Node
    attr_accessor :children
    def initialize(char = nil)
        @char = char
        @children = {}
        @term = false
    end

    def insert(word)
        return @term = true if word.empty?
        ch = word.first
        if @children[ch].nil?
            node = Node.new(ch)
            @children[ch] = node
        end
        @children[ch].insert(word[1..-1])
    end

    def check(word, sofar="")
        return sofar if @term
        return @term if word.empty?
        ch = word.first
        return false if @children[ch].nil?
        @children[ch].check(word[1..-1], sofar + ch)
    end

end


class Trie
    attr_reader :root

    def initialize()
        @root = Node.new
    end

    def insert(word)
        @root.insert(word.split(""))
    end

    def check(word)
        @root.check(word.split(""))
    end
end 


def replace_words(dict, sentence)
    arr = sentence.split(" ")
    root = Trie.new
    dict.each do |d|
        root.insert(d)
    end
    (0...arr.size).each do |i|
        tmp = root.check(arr[i])
        arr[i] = tmp if tmp
    end
    return arr.join(" ")
end
