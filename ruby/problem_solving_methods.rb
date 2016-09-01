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