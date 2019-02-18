class Show < ActiveRecord::Base
  has_many :characters
  has_many :network

  def build_network(arg)
    #self.network.call_letters = network.name
  end

end
