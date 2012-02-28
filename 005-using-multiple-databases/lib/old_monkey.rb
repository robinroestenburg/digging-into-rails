require 'active_record' 

class OldMonkey
  include ActiveRecord::Model
  self.table_name = '_6d6f6e6b657973'

  def name
    _6e616d65
  end
end
