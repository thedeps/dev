class Admin < ActiveRecord::Base
  
  #Validações
  validates :email, presence: true
  validates :email, uniqueness: true
  
  #Associações
  belongs_to :category
  belongs_to  :team
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable
         

  
end
