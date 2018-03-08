
def perm(a, l, r)
  ans = [] 
  permutation(a, ans, l, r)
  return ans
end


def permutation(arr, ans, l, r)
  if l == r
    tmp << arr.dup
  else
    for i in l..r
      arr[l], arr[i] = arr[i], arr[l]
      permutation(arr, ans, l+1, r)
      arr[l], arr[i] = arr[i], arr[l]
    end
  end

end
