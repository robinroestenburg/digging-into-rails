require_relative 'lib/monkey.rb'
require_relative 'lib/old_monkey.rb'
require_relative 'lib/migrates_monkeys.rb'
require_relative 'config/database.rb'

p Monkey.all

MigratesMonkeys.new.migrate

p Monkey.all

