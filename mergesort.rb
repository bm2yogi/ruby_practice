#!/usr/bin/ruby


def mergesort unsorted_array
  
  return unsorted_array unless unsorted_array.length > 1

  mid = (unsorted_array.length/2).to_int
  left = unsorted_array.take mid
  right = unsorted_array.drop mid

  merge mergesort(left), mergesort(right)

end

def merge left, right

  merged = []

  while !(left + right).empty?

    if left.empty?
      right.each{|n| merged << right.delete(n)}
    elsif right.empty?
      left.each {|n| merged << left.delete(n)}
    elsif left.first <= right.first
      merged << left.shift
    else
      merged << right.shift
    end
  end

  return merged

end

arr = [5,2,6,9,3,7,1,8,4]

p "original: #{arr}"

p "sorted: #{mergesort arr}"
