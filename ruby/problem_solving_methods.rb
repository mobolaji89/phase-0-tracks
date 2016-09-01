##Release 0##
arr = [15, 11, 13, 20]

def index_finder(arr, n)
    index = 0
    until index == arr.length
        if n == arr[index]
            return index
        end
    index += 1
    end
end

p index_finder(arr, 20)

##Release 1##
def fibonacci(n)
fib_array = [0,1]
 	index = 2 
 	until index == n 
 		fib_array.push(fib_array[index-1] + fib_array[index-2])
 		index += 1 
 	end 
 	return fib_array
end 

p fibonacci(10)

##Release 2##

##Pseudocode##
#1) Define method that accepts an array as an argument
#2) Create variable equal to the length of the array, because we want to eventually loop through each of the indexes of the array.
#3) Create first loop to continue looping until swapping is complete (true)
#4) Set swapped variable equal to boolean value of false
#5) Set up nested .times loop using array length - 1 to loop through the number of indexes.
#6) Use an if statement within the .times loop to check if current index value great the next index value, and if true, than swap values. Once they have been swapped, then swapped  is equal true at that index.
#7) Break loop if not swapped
#8) Return the updated array

#Bubble Sort Method

array = [15, 100, 39, 45, 21]

def bubble_sort(array)
	n = array.length
	loop do
    	swapped = false
		(n-1).times do |i|
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end
	break if not swapped
	end
	return array
end

p bubble_sort(array)