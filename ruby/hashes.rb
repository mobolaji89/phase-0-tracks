#Pseudocode

#1) Ask interior designer to enter details of a given client (multiple questions), and get user input for each question.
#2) Use hash notation (in my case I will assign values to symbols as keys).
#3) Print hash back onto screen for user (I will use 'p')
#4) If temp is equal to unknown, then I will prompt user to update answer using an if statement for a conditional, and update the value.
#5) Print out updated hash using 'p' again.


#Steps 1 and 2 - Ask questions, get user input, and assign input to hash values.
puts "What is your name?"
    name = gets.chomp.to_s
puts "What is your age?"
    age = gets.chomp.to_i
puts "How many children do you have?"
    children = gets.chomp.to_i
puts "What is your decor theme?"
    decor = gets.chomp.to_s
puts "Will this be a temporary design? (Type: Y or N)"
    temp = gets.chomp.to_s
    if temp == "Y"
        temp = true
    elsif temp == "N"
        temp = false
    else
        temp = "unknown"
    end

app = {
:name => name,
:age => age,
:children => children,
:decor => decor,
:temp => temp,
}

#Pseudocode #3 - Print Hash
p app

#Pseudocode #4 and #5 - Update hash and print
if app[:temp] == "unknown"
    puts "Your temporary design answer is unknown. Please try again."
    puts "Will this be a temporary design? (Type: Y or N)"
    temp = gets.chomp.to_s
    if temp == "Y"
        app[:temp] = true
    elsif temp == "N"
        app[:temp] = false
    else
        temp = "unknown"
    end
end

p app
