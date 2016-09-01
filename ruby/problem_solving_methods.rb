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