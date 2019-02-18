class Show < ActiveRecord::Base
  has_many :characters
  has_many :networks

  def build_network(network)
    #self.network.call_letters = network.name
    #binding.pry
  end

end
