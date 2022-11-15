# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airplanes.destroy_all

a1= Airplanes.create(:name => 'B737', :rows => '10', :columns => '6')
a2= Airplanes.create(:name => 'B747', :rows => '10', :columns => '6')
a3= Airplanes.create(:name => 'A320', :rows => '10', :columns => '6')


Flights.destroy_all

f1= Flights.create(:number => BA356, :destination => 'SYD', :departure=> "MEL", :date => Time.new(2022, 12, 15))
f2= Flights.create(:number => BA678, :destination => 'BNE', :departure=> "CBR", :date => Time.new(2023, 1, 5))
f3= Flights.create(:number => BA921, :destination => 'PER', :departure=> "SYD", :date => Time.new(2023, 2, 10))
f4= Flights.create(:number => BA590, :destination => 'ADL', :departure=> "BNE", :date => Time.new(2023, 1, 15))
f5= Flights.create(:number => BA728, :destination => 'HBA', :departure=> "MEL", :date => Time.new(2023, 1, 20))


f1<<a1
f2<<a1
f3<<a1
f4<<a1
f5<<a1

f1<<a2
f2<<a2
f3<<a2
f4<<a2
f5<<a2

f1<<a3
f2<<a3
f3<<a3
f4<<a3
f5<<a3

