class Championship < ActiveRecord::Base
  #Associações
  has_many :matches, dependent: :destroy
  
  #Validações
  validates :name, presence: true
  validates :name, uniqueness: true
  
end
