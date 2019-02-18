require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    all_shows = []
    characters = []
    self.shows.each do |show|
      all_shows << show.name
    end
    binding.pry
    c = Character.find_by(actor_id: 1)


  end


end
