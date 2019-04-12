def bubblesort (array)

n = array.length-1
loop do

sorted = true
  for i in 0..n-1
        if
        array[i] > array[i+1]
        array[i], array[i+1] = array[i+1],array[i]
        sorted=false

        end
  end
  n-=1
  break if sorted
end

return array
end

puts "Bubble sort (numbers) : "
puts bubblesort([5,3,9,5,90,12,34])
                                                   


def bubblesortBy (array)

n = array.length-1
loop do

sorted = true
  for i in 0..n-1
        if yield( array[i] , array[i+1] ) > 0
        array[i], array[i+1] = array[i+1],array[i]
        sorted=false

        end
  end
  n-=1
  break if sorted
end

return array
end

puts "Bubble sort (strings) : "
puts bubblesortBy(["Hello","sir","whose","kukkies","are","these"]) do | left, right |
left.length - right.length
end