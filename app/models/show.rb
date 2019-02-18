class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(network)
    self.network = network.name
  end

end
