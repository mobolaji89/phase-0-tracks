#require gems
require 'sqlite3'
require 'faker'

#create SQLite3 database
db = SQLite3::Database.new("contact_list.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  address VARCHAR(255),
  phone_number VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def create_contacts(db, name, address, phone_number)
  db.execute("INSERT INTO contacts (name, address, phone_number) VALUES (?, ?, ?)", [name, address, phone_number])
end

puts "How many contacts do you need to enter?"
num = gets.chomp.to_i

#I could do a more complex user interface, but for the sake of time, I will just use a loop with fake names entered into the database. I will also use random phone numbers using rand.

num.times do
  fake_name = Faker::Name.name
  puts "What is the address of #{fake_name}?"
  address = gets.chomp
  puts "What is the phone number of #{fake_name}?"
  phone_number = rand(1000000000..9999999999).to_s
  puts phone_number
  create_contacts(db, fake_name, address, phone_number)
end

#I could have added seperate columns for city, state, and zip code specifically, but for the sake of time the address is the whole string.

#explore ORM
contact_list = db.execute("SELECT * FROM contacts")
#p contact_list

#print data
def print_data(list)
  puts "Here are your current contacts:"
  list.each do |contact|
    puts "name: #{contact[1]}, address: #{contact[2]}, phone number: #{contact[3]}"
  end
end

print_data(contact_list)

#Incorporate update and delete actions for contact list. I probably could have used a case statement to make it more streamlined, but due to time, I kept it straight-forward.

puts "Would you like to delete or update a contact? type: 'update' or 'delete'"
request = gets.chomp
if request.downcase == 'update'
  puts "What is the name of the contact you would like to update"
  contact_name = gets.chomp
  puts "Which category would you like to update? type 'name', 'address', or 'phone number'."
  categ = gets.chomp.downcase
  if categ == 'name'
    puts "What would you like to change there name to?"
    update_name = gets.chomp    
    db.execute("UPDATE contacts SET name='#{update_name}' WHERE name='#{contact_name}'")
  elsif categ == 'address'
    puts "What would you like to change their address to?"
    update_address = gets.chomp    
    db.execute("UPDATE contacts SET address='#{update_address}' WHERE name='#{contact_name}'")
  elsif categ == 'phone number'
    puts "What would you like to change there phone number to?"
    update_number = gets.chomp    
    db.execute("UPDATE contacts SET phone_number='#{update_number}' WHERE name='#{contact_name}'")
  end
  updated_list = db.execute("SELECT * FROM contacts")
  print_data(updated_list)
elsif request.downcase == 'delete'
  puts "What is the name of the contact you would like to delete"
  contact_name = gets.chomp
  db.execute("DELETE FROM contacts WHERE name='#{contact_name}'")
  updated_list = db.execute("SELECT * FROM contacts")
  print_data(updated_list)
end
  