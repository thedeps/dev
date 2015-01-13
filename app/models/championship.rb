class Championship < ActiveRecord::Base
  #Associações
  has_many :matches
  
  #Validações
  validates :name, presence: true
  validates :name, uniqueness: true
  
end
