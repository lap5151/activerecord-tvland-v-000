require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #self.shows.each do |show|
    s = self.shows
    i = self.actor_id
    c = Character.find_by(actor_id: 1)

      binding.pry
  end


end
