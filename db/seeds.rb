# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating dams......."

Dam.destroy_all

d1 = Dam.create!(
    name: 'Millbrook Reservoir',
    location: '-34.828771, 138.813477',
    description: 'nice dam',
    photo: 'http://www.fillmurray.com/200/200',
    health: 'excellent',
    status: 'lots of fish',
    owner: 'Elvis'
) 
d2 = Dam.create!(
    name: 'Kangaroo Creek Reservoir',
    location: '-34.868780, 138.780900',
    description: 'lovely dam',
    photo: 'http://www.fillmurray.com/200/200',
    health: 'very good',
    status: 'quite a few fish',
    owner: 'Derek'
) 
d3 = Dam.create!(
    name: 'Little Para',
    location: '-34.746325, 138.727363',
    description: 'pretty good dam',
    photo: 'http://www.fillmurray.com/200/200',
    health: 'good',
    status: 'a number of fish',
    owner: 'Michael'
) 

puts "created #{ Dam.count } dams."

##########################################################################

puts "Creating users"

User.destroy_all

u1 = User.create!(
    name: 'Hamish Fork',
    email: 'hamish@hotmail.com',
    password: 'chicken',
    membership: 'Premium',
    phone: '0412345678',
    car_reg: 'S566AHN',
    admin: false,
)
u2 = User.create!(
    name: 'Peter Mullet',
    email: 'peter@hotmail.com',
    password: 'chicken',
    membership: 'Basic',
    phone: '0422776555',
    car_reg: 'S988AYE',
    admin: false,
)
u3 = User.create!(
    name: 'Andrew Hoffer',
    email: 'andy@hotmail.com',
    password: 'chicken',
    membership: 'Membership Officer',
    phone: '0499888423',
    car_reg: 'S753ASK',
    admin: true
)

puts "Done. Created #{User.count} users."

########################################################################

puts "Creating Bookings...."

Booking.destroy_all

b1 = Booking.create!(
    date_time: '2021/02/03 11:00:00',
    car_reg: 'S753ASK'
)
b2 = Booking.create!(
    date_time: '2021/02/04 12:00:00',
    car_reg: 'S988AYE'
)
b3 = Booking.create!(
    date_time: '2021/02/05 10:00:00',
    car_reg: 'S566AHN'
)

puts "Done. Created #{Booking.count} users."

##########################################################
d1.bookings << b1
u1.bookings << b1

d2.bookings << b2 << b3
u2.bookings << b2 << b3


puts "User associated booking: #{User.second.name} has #{User.second.bookings.pluck(:date_time).join('---')}."

puts "Dam associated booking: #{Dam.second.name} has #{Dam.second.bookings.pluck(:date_time).join('---')}."