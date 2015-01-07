class Team < ActiveRecord::Base
  #Associações
  has_many :users
  
  #Validações
  validates :name, :tag, presence: true
  validates :name, :tag, uniqueness: true
  
  
end
