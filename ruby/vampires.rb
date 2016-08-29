puts "How many employees will be processed?"
employees = gets.chomp.to_i
for i in 1..employees do

	puts "What is your name?"
	name = gets.chomp.to_s
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
    birth_year = gets.chomp.to_i
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (Y / N)"
    garlic = gets.chomp.to_s
    puts "Would you like to enroll in the company's health insurance (Y / N)?"
    health = gets.chomp.to_s
    #Release 4 below
    puts "Do you have any allergies?"
    end_inputs = false
    until end_inputs == true do
        allergy = gets.chomp.to_s
        if allergy == "sunshine"
            allergy = true
            end_inputs = true
        elsif allergy == "done"
            end_inputs = true
            allergy = false
        end
    end

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


    if (allergy == false && name == false && age == true && (garlic == true || health == true))
        puts "Probably not a vampire."
    elsif ((allergy == true) || (name == false && (age == false && garlic == false && health == true)) || (name == false && (age == false && garlic == true && health == false)))
        puts "Probably a vampire."
    elsif (allergy == false && name == false && (age == false && garlic == false && health == false))
        puts "Almost certainly a vampire."
    elsif (allergy == false && name == true && (age == true || age == false) && (garlic == true || garlic == false) && (health == true || health == false))
        puts "Definitely a vampire."
    else
        puts "Results inconclusive."
    end
    
    puts "
Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end

