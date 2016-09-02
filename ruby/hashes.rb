#Pseudocode

#1) Ask interior designer to enter details of a given client (multiple questions), and get user input for each question.
#2) Use hash notation (in my case I will assign values to symbols as keys).
#3)

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

p app