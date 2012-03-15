require 'active_record'

class Tree 
  include ActiveRecord::Model
  attr_accessible :type
  belongs_to :forest
end
