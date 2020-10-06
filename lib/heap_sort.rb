# This method uses a heap to sort an array.
# Time Complexity:  O(n log n)
# Space Complexity: O(n)
def heapsort(list)
  heap = MinHeap.new

  list.each do |element|
    heap.add(element)
  end

  list.each_with_index do |number, index|
    list[index] = heap.remove()
  end

  return list
end