# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

username = "rhaamo"
email = "rhaamo@gruik.at"
password = "toto"
  
account = User.create(:email => email, :login => username, :password => password, :password_confirmation => password)
account.role.title = "admin"
account.role.save

if account.valid?
  puts "Ok"
else
  puts "Bad"
end