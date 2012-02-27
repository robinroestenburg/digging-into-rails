require_relative 'lib/monkey.rb'


ActiveRecord::Model.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "robin",
  :password => "",
  :database => "monkey_business"
)

ActiveRecord::Model.table_name_prefix = 'weird_'

monkey = Monkey.new
monkey.name = 'George'
monkey.save
