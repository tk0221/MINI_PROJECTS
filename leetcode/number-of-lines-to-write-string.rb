# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
    page, units = 1, 0
    s.each_char do |ch|
        i = ch.ord - 'a'.ord
        if units + widths[i] > 100
            page+=1
            units = widths[i]
        else
            units += widths[i]
        end
    end
    [page, units]
end
