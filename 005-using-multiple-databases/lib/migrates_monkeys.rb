class MigratesMonkeys

  def migrate
    OldMonkey.all.each do |old_monkey| 
      monkey = Monkey.new
      monkey.name = decode(old_monkey.name)
      monkey.save
    end
  end

  def decode(name)
    [name].pack('H*')
  end

end
