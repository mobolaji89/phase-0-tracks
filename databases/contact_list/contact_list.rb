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
  phone_number INT
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
  phone_number = rand(1000000000..9999999999)
  puts phone_number
  create_contacts(db, fake_name, address, phone_number)
end
  