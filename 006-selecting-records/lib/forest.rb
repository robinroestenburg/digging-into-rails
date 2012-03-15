require 'active_record' 

class Forest 
  include ActiveRecord::Model
  has_many :trees
end
