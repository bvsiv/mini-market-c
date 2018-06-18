# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

carlos = Customer.create(name: 'Carlos Santana', email: 'carlos@gmail.com', password: 'Carlos1', password_confirmation: 'Carlos1')
michael = Customer.create(name: 'Michael Jackson', email: 'michael@gmail.com', password: 'Michael1', password_confirmation: 'Michael1')
bonnie = Customer.create(name: 'Bonnie Tyler', email: 'bonnie@gmail.com', password: 'Bonnie1', password_confirmation: 'Bonnie1')

bryan = Merchant.create(name: 'Bryan Adams', email: 'bryan@gmail.com', password: 'Bryan1', password_confirmation: 'Bryan1')
damien = Merchant.create(name: 'Damien Rice', email: 'damien@gmail.com', password: 'Damien1', password_confirmation: 'Damien1')
norah = Merchant.create(name: 'Norah Jones', email: 'norah@gmail.com', password: 'Norah1', password_confirmation: 'Norah1')

guitar = Product.create(name: "Guitar", description: "The best guitar", merchant_id: bryan.id)
car = Product.create(name: "Car", description: "The best car", merchant_id: bryan.id)
phone = Product.create(name: "Phone", description: "The best phone", merchant_id: bryan.id)

book = Product.create(name: "Book", description: "The best book", merchant_id: damien.id)
cd = Product.create(name: "CD", description: "The best cd", merchant_id: damien.id)
magazine = Product.create(name: "Magazine", description: "The best magazine", merchant_id: damien.id)

backpack = Product.create(name: "Backpack", description: "The best backpack", merchant_id: norah.id)
suitcase = Product.create(name: "Suitcase", description: "The best suitcase", merchant_id: norah.id)
shoes = Product.create(name: "Shoes", description: "The best shoes", merchant_id: norah.id)


Offer.create(suggested_price: 10000, status: "proposed", customer_id: carlos.id, product_id: guitar.id)
Offer.create(suggested_price: 1000, status: "proposed", customer_id: carlos.id, product_id: book.id)
Offer.create(suggested_price: 500, status: "proposed", customer_id: carlos.id, product_id: backpack.id)

Offer.create(suggested_price: 100000, status: "proposed", customer_id: michael.id, product_id: car.id)
Offer.create(suggested_price: 100, status: "proposed", customer_id: michael.id, product_id: cd.id)
Offer.create(suggested_price: 500, status: "proposed", customer_id: michael.id, product_id: suitcase.id)

Offer.create(suggested_price: 2000, status: "proposed", customer_id: bonnie.id, product_id: phone.id)
Offer.create(suggested_price: 10, status: "proposed", customer_id: bonnie.id, product_id: magazine.id)
Offer.create(suggested_price: 200, status: "proposed", customer_id: bonnie.id, product_id: shoes.id)

Offer.create(suggested_price: 100000, status: "proposed", customer_id: michael.id, product_id: guitar.id)
Offer.create(suggested_price: 10000, status: "proposed", customer_id: michael.id, product_id: book.id)
Offer.create(suggested_price: 5000, status: "proposed", customer_id: michael.id, product_id: backpack.id)

Offer.create(suggested_price: 1000000, status: "proposed", customer_id: bonnie.id, product_id: car.id)
Offer.create(suggested_price: 1000, status: "proposed", customer_id: bonnie.id, product_id: cd.id)
Offer.create(suggested_price: 5000, status: "proposed", customer_id: bonnie.id, product_id: suitcase.id)

Offer.create(suggested_price: 20000, status: "proposed", customer_id: michael.id, product_id: phone.id)
Offer.create(suggested_price: 100, status: "proposed", customer_id: michael.id, product_id: magazine.id)
Offer.create(suggested_price: 2000, status: "proposed", customer_id: michael.id, product_id: shoes.id)

Offer.create(suggested_price: 1000, status: "proposed", customer_id: bonnie.id, product_id: guitar.id)
Offer.create(suggested_price: 100, status: "proposed", customer_id: bonnie.id, product_id: book.id)
Offer.create(suggested_price: 50, status: "proposed", customer_id: bonnie.id, product_id: backpack.id)

Offer.create(suggested_price: 10000, status: "proposed", customer_id: carlos.id, product_id: car.id)
Offer.create(suggested_price: 10, status: "proposed", customer_id: carlos.id, product_id: cd.id)
Offer.create(suggested_price: 50, status: "proposed", customer_id: carlos.id, product_id: suitcase.id)

Offer.create(suggested_price: 200, status: "proposed", customer_id: carlos.id, product_id: phone.id)
Offer.create(suggested_price: 1, status: "proposed", customer_id: carlos.id, product_id: magazine.id)
Offer.create(suggested_price: 20, status: "proposed", customer_id: carlos.id, product_id: shoes.id)
