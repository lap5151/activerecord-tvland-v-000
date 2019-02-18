class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
  belongs_to :networks

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def network
    #self.network
    binding.pry
  end

end
