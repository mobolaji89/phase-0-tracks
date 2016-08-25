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

if name == "Drake Cula" || name == "Tu Fang"
name = true
else
name = false
end

current_year = 2016
age_check = current_year-birth_year
if age == age_check
	age = true
else
	age = false
end

if garlic == "Y"
	garlic = true
elsif garlic == "N" 
	garlic = false
end

if health == "Y"
	health = true
elsif garlic == "N"
	health = false
end


if name == false && age == true && (garlic == true || health == true)
	puts "Probably not a vampire."
elsif name == false && (age == false && garlic == false && health == true) || name == false && (age == false && garlic == true && health == false)
	puts "Probably a vampire."
elsif name == false && (age == false && garlic == false && health == false)
	puts "Almost certainly a vampire."
elsif name == true && (age == true || age == false) && (garlic == true || garlic == false) && (health == true || health == false)
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end