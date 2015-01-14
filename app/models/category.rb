class Category < ActiveRecord::Base
	has_many :user
	
  #Validações
  validates :name, presence: true
  validates :name, uniqueness: true
end
