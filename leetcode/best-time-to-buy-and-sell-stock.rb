# @param {Integer[]} prices
# @return {Integer}
#44ms
def max_profit(prices)
    lo = 10**10
    max_profit = 0
    i = 0
    while i < prices.size
        if prices[i] < lo
            lo = prices[i]
        else
            max_profit = prices[i] - lo if prices[i] - lo > max_profit
        end
        i+=1
    end
    return max_profit

end


#so slow
def max_profit2(prices, sofar = 0)
    return sofar if prices.empty?
    
    rest = prices[1..-1]
    rest_max = rest.max || 0
    
    sofar = rest_max - prices.first if  rest_max - prices.first > sofar 
    
    max_profit(prices[1..-1], sofar)

end
