puts "What is your name?"
name = gets.chomp.to_s
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y / N)"
garlic = gets.chomp.to_s
puts "Would you like to enroll in the company's health insurance (Y / N)?"
health =gets.chomp.to_s

if (age <= 100 && birth_year >= 1916) && (garlic = "Y" || health = "Y")
	puts "Probably not a vampire."
end