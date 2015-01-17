class User < ActiveRecord::Base
  #Associações
  belongs_to :category
  belongs_to  :team
  
  #Validações
  validates :login, :id_steam, :email, presence: true
  validates :login, :id_steam,:email, uniqueness: true
  
  
  #Está relacionado ao devise:
  
  # Include default devise modules. Others available are:
  #:confirmable
  #:lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
         
  extend FriendlyId
  friendly_id :login, use: [:slugged, :history]
  
  User.new {
     def should_generate_new_friendly_id?
       slug.blank? || :login_changed?
     end
  }
  
end
