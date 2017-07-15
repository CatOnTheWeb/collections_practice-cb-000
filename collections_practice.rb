
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    b <=> a
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a.length == b.length
      0
    elsif a.length < b.length
      -1
    elsif a.length > b.length
      1
    end
  end
end

def swap_elements(array)
  one = array[1]
  array[1] = array[2]
  array[2] = one
  array
end

def swap_elements_from_to(array, index, target)
  holder = array[index]
  array[index] = array[target]
  array[target] = holder
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  keshad = []
  array.each do |string|
    small = string.split('')
    small[2] = '$'
    keshad << small.join()
  end
  keshad
end

def find_a(array)
  found = []
  array.each do |string|
    item = string.split('')
    if item[0] == 'a'
      found << string
    end
  end
  found
end

def sum_array(array)
  sum = 0
  array.each do |num|
    sum += num
  end
  sum
end

def add_s(array)
  array.each_with_index {|item, index| index == 1 ? item = item : item << 's'}
end
