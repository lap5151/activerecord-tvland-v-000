class Show < ActiveRecord::Base
  has_many :characters
  has_many :networks

  def build_network(network)
    show.network = network
  end

end
