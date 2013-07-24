#!/usr/bin/ruby

def quicksort unsorted

  return unsorted if unsorted.length <= 1

  pivot = unsorted.delete_at (unsorted.length/2).to_int
  less_than_pivot, greater_than_pivot = [],[]

  unsorted.each do |n|

    if n <= pivot
      less_than_pivot << n
    else
      greater_than_pivot << n
    end

  end

  quicksort(less_than_pivot) + [pivot]  + quicksort(greater_than_pivot)

end

arr = [8,2,4,9,3,1,6,5,7]

p "original: #{arr}"
p "sorted:   #{quicksort arr}"
