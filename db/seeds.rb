# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Client.delete_all
Stock.delete_all

c1 = Client.create!(name: 'Johnny Butterfingers', cash: 8000)
c2 = Client.create!(name: 'Fran the Man', cash: 750)
c3 = Client.create!(name: 'Mustapha Goldberg', cash: 10000000)
c4 = Client.create!(name: 'Claire Parrotface', cash: 589765900)
c5 = Client.create!(name: 'Cajun McGee', cash: 600)
c6 = Client.create!(name: 'Zach Crackalack', cash: 89700)
c7 = Client.create!(name: 'Sarah Fergberg', cash: 12321)

s1 = Stock.create!(name: 'GOOG', shareprice: 540)
s2 = Stock.create!(name: 'TSLA', shareprice: 212)
s3 = Stock.create!(name: 'DDD', shareprice: 18)
s4 = Stock.create!(name: 'AAPL', shareprice: 600)
s5 = Stock.create!(name: 'HP', shareprice: 23)
s6 = Stock.create!(name: 'GE', shareprice: 32)
s7 = Stock.create!(name: 'FB', shareprice: 67)
s8 = Stock.create!(name: 'AMZN', shareprice: 366)

c1.client_stocks.create(stock_id: s1.id, stock_quantity: 100)
c1.client_stocks.create(stock_id: s2.id, stock_quantity: 70)
c2.client_stocks.create(stock_id: s7.id, stock_quantity: 12)
c2.client_stocks.create(stock_id: s8.id, stock_quantity: 1)
c3.client_stocks.create(stock_id: s5.id, stock_quantity: 45)
c3.client_stocks.create(stock_id: s4.id, stock_quantity: 2)
c4.client_stocks.create(stock_id: s4.id, stock_quantity: 23)
c5.client_stocks.create(stock_id: s6.id, stock_quantity: 1)
c6.client_stocks.create(stock_id: s2.id, stock_quantity: 32)
c6.client_stocks.create(stock_id: s6.id, stock_quantity: 459)
c6.client_stocks.create(stock_id: s3.id, stock_quantity: 44)
c7.client_stocks.create(stock_id: s8.id, stock_quantity: 232)

puts 'seeded!'