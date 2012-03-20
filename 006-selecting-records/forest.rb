require_relative 'lib/tree.rb'
require_relative 'lib/forest.rb'


ActiveRecord::Model.establish_connection(
  :adapter  => "postgresql",
  :host     => "localhost",
  :username => "robin",
  :password => "",
  :database => "monkey_business"
)


# Create a forest, check: http://en.wikipedia.org/wiki/Rothrock_State_Forest
forest = Forest.new(name: 'Rothrock')

# Create a couple of trees, for more types check: http://www.tree-pictures.com/tree_types.html
forest.trees << Tree.new(species: 'Cucumbertree')
forest.trees << Tree.new(species: 'Red Pine')
forest.trees << Tree.new(species: 'Black-Toothed Willow')

forest.save

puts Tree.find(:all, :conditions => ['species = ?', 'Red Pine']).inspect
puts Tree.where(['species = ?', 'Red Pine']).inspect
