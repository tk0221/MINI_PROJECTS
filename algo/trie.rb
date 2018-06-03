# demo : https://repl.it/@tk0221/trie
#             dict
#               |
#    {b,              t}
#     |               |
# {a,     o}         {e}
#  |      |           |
# {t}    {b}         {s}
# |       |           |
# *       *          {t}
#                     |
#                     *

require 'pp'
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

    def find(word)
        return @term if word.empty?
        ch = word.first
        return false if @children[ch].nil?
        @children[ch].find(word[1..-1])
    end

    def check(word, sofar = "")

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

    def find(word)
        @root.find(word.split(""))
    end
    
    def check(word)
        @root.check(word.split(""))
    end

end 

dict = Trie.new

pp dict.insert("test")
pp dict.insert("bob")
pp dict.insert("bat")
pp dict.insert("test")
pp dict.find("bo")
pp dict.find("bob")
pp dict.check("check")
pp dict.check("bob")
