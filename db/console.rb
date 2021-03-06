require_relative( "../models/customers" )
require_relative( "../models/films" )
require_relative( "../models/tickets" )

require ( "pry-byebug")

customer1 = Customer.new({ "name" => "Chris Craig", "funds" => 20 })
customer1.save
customer2 = Customer.new({ "name" => "Henrik Larsson", "funds" => 100})
customer2.save
customer3 = Customer.new({ "name" => "Thierry Henry", "funds" => 20})
customer3.save

film1 = Film.new({ "title" => "Deadpool 2", "price" => 15})
film1.save
film2 = Film.new({ "title" => "Venom", "price" => 15})
film2.save
film3 = Film.new({ "title" => "Han Solo", "price" => 15})
film3.save

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save
ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film1.id})
ticket2.save


binding.pry
nil
