# Definition for an interval.
# class Interval
#     attr_accessor :start, :end
#     def initialize(s=0, e=0)
#         @start = s
#         @end = e
#     end
# end

# @param {Interval[]} intervals
# @return {Interval[]}
# 120ms slow SLOW SLLLLLLLLLLLLLLLOWWWWWWWWWWWWWW
def merge(intervals)
    return [] if intervals.empty?
    res = []
    intervals = intervals.sort_by  {|obj| obj.start}
    prev = intervals[0]
    (1...intervals.size).each do |i|
        if prev.end < intervals[i].start
            res << prev
            prev = intervals[i]
        else
            finish = intervals[i].end > prev.end ? intervals[i].end : prev.end
            prev = Interval.new(prev.start, finish)
        end
    end
    res << prev
    return res
end
