require_relative 'lib/monkey.rb'


ActiveRecord::Model.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "robin",
  :password => "",
  :database => "monkey_business"
)

monkey = Monkey.new
monkey.name = 'George'
monkey.save
