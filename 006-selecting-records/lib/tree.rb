require 'active_record'

class Tree 
  include ActiveRecord::Model
  attr_accessible :species
  belongs_to :forest
end
