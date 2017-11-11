class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show
    self.build_show(:name => "Firefly")
    self.save
  end

  def build_network
    self.build_network(:call_letters => "Fox")
  end
end
