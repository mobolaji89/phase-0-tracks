puts "Enter the hamster's name:"
name = gets.chomp.to_s
puts "Enter a volume level from 1 to 10:"
level = gets.chomp.to_i
puts "What's the color of the hamster?"
color = gets.chomp.to_s
puts "Is the hamster a good candidate for adoption (Y/N)?"
adoption = gets.chomp.to_s
puts "What is the estimated age of the hamster?"
age = gets.chomp.to_i
if age == "".to_i then age = nil 
puts age.inspect
end

puts "--------HAMPSTER DATA--------"
puts "Name: #{name}"
puts "Volume: #{level}"
puts "Fur Color: #{color}"
puts "Eligibility: #{adoption}"
puts "Age:#{age.inspect}" 