require_relative 'lib/monkey.rb'


ActiveRecord::Model.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "robin",
  :password => "",
  :database => "monkey_business"
)

emperor_tamarin = Monkey::EmperorTamarin.new
emperor_tamarin.name = 'George'
emperor_tamarin.save
