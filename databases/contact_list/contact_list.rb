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
puts "Here are your current contacts:"
contact_list.each do |contact|
  puts "name: #{contact[1]}, address: #{contact[2]}, phone number: #{contact[3]}"
end

#If I had more time I could formulate methods to update or delate certain contacts within the database. But I understand the basics of ORM.
  