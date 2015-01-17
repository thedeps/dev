class Team < ActiveRecord::Base
  #Associações
  has_many :users
  
  #Validações
  validates :name, :tag, presence: true
  validates :name, :tag, uniqueness: true
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
  Team.new {
     def should_generate_new_friendly_id?
       slug.blank? || :name_changed?
     end
   }
  
end
