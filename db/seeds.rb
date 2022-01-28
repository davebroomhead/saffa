# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print "Creating dams......."

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

print "created #{ Dam.count } dams."

##########################################################################

print "Creating users"

User.destroy_all

u1 = User.create!(
    name: 'Hamish Fork',
    email: 'hamish@hotmail.com',
    password_digest: '',
    membership: 'Premium',
    phone: '0412345678',
    car_reg: 'S566AHN',
)
u3 = User.create!(
    name: 'Peter Mullet',
    email: 'peter@hotmail.com',
    password_digest: '',
    membership: 'Basic',
    phone: '0422776555',
    car_reg: 'S988AYE',
)
u3 = User.create!(
    name: 'Andrew Hoffer',
    email: 'andy@hotmail.com',
    password_digest: '',
    membership: 'basic',
    phone: '0499888423',
    car_reg: 'S753ASK',
)

print "Done. Created #{User.count} users."

########################################################################

print "Creating Bookings...."

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

print "Done. Created #{Booking.count} users."

##########################################################