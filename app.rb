require 'sqlite3'

db = SQLite3::Database.new 'test.sqlite'

db.execute "SELECT * FROM CARS" do |car|
	puts car
	puts "==="
end

db.close