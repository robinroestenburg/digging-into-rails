require 'active_record'

class Monkey 
  include ActiveRecord::Model

  self.table_name = 'primates'
end
