# frozen_string_literal: true

def bubble_sort(unsorted)
  (1...unsorted.length).each do |_j|
    (1...unsorted.length).each do |i|
      unsorted[i - 1], unsorted[i] = unsorted[i], unsorted[i - 1] if unsorted[i - 1] > unsorted[i]
    end
  end

  unsorted
end

p bubble_sort([4, 3, 78, 2, 0, 2])
