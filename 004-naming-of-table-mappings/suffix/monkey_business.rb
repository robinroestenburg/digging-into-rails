require_relative 'lib/monkey.rb'


ActiveRecord::Model.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "robin",
  :password => "",
  :database => "monkey_business"
)

ActiveRecord::Model.table_name_suffix = '_on_my_mind'

monkey = Monkey.new
monkey.name = 'George'
monkey.save
