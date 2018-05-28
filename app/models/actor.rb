class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
     return "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    binding.pry
    self.characters.map do |role|
      puts role
      binding.pry
    end
  end
end
