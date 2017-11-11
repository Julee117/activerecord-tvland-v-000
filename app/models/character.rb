class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show
    self.shows.build(:name => "Firefly")
    self.save
  end

  def build_network
    self.networks.build(:call_letters => "Fox")
    self.save
  end
end
