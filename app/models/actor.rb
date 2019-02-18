require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    #characters = []
    self.shows.each do |show|
      #all_shows << show.name
      show_name = show.name
      role =  Character.find_by(show_id: show.id)
      role_name = role.name
      roles << "#{role_name} - #{show_name}"
      #binding.pry
    end
    #binding.pry
    #c = Character.where(show_id: 1)
    roles
  end


end
