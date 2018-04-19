# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
    neg = (dividend < 0 ) == ( divisor < 0)
    dividend, divisor = dividend.abs, divisor.abs
    res = 0
    while dividend >= divisor
        tmp, i = divisor, 1
        while dividend >= tmp
            dividend -= tmp
            res += i
            i<<=1
            tmp<<=1
        end
    end
    res = -res unless neg
    return [[res, -2147483648].max, 2147483647].min
end
