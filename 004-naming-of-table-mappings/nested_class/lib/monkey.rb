require 'active_record'

class Monkey 
  include ActiveRecord::Model

  class Mind 
    include ActiveRecord::Model
  end
end
