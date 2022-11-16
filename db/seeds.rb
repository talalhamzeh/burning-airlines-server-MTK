# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airplane.destroy_all

a1= Airplane.create(:name => 'B737', :rows => '10', :columns => '6')
a2= Airplane.create(:name => 'B747', :rows => '10', :columns => '6')
a3= Airplane.create(:name => 'A320', :rows => '10', :columns => '6')


Flight.destroy_all

f1= Flight.create(:number => 'BA356', :destination => 'SYD', :departure=> "MEL", :date => Time.new(2022, 12, 15))
f2= Flight.create(:number => 'BA678', :destination => 'BNE', :departure=> "CBR", :date => Time.new(2023, 1, 5))
f3= Flight.create(:number => 'BA921', :destination => 'PER', :departure=> "SYD", :date => Time.new(2023, 2, 10))
f4= Flight.create(:number => 'BA590', :destination => 'ADL', :departure=> "BNE", :date => Time.new(2023, 1, 15))
f5= Flight.create(:number => 'BA728', :destination => 'HBA', :departure=> "MEL", :date => Time.new(2023, 1, 20))

a1.flights << f1 << f2
a2.flights << f3 << f4
a3.flights << f5


