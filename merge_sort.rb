def merge_sort(array)
  return array if array.size == 1

  # take the array and separate it into two parts if the array has more than 1 element
  mid = (array.length / 2.0).ceil
  first_half = array[0...mid]
  second_half = array[mid..-1]

  a = merge_sort(first_half)
  b = merge_sort(second_half)
  merge(a, b)
end

def merge(a, b)
  arr = []

  while !a.empty? && !b.empty?
    if a[0] > b[0]
      arr.push(b.shift)
    elsif b[0] > a[0]
      arr.push(a.shift)
    else
      arr.push(a.shift)
    end
  end
  arr.concat(a).concat(b)
end

arr = [7, 7, 3, 9, 3]
p arr
p merge_sort(arr)
