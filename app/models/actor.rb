class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.joins(characters: :shows).map do |actor|
      "#{actor.characters.name} - #{actor.shows.name}"
    end
  end
end
