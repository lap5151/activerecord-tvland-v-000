class Show < ActiveRecord::Base
  has_many :characters
  has_many :networks

  def build_network
    binding.pry
  end

end
