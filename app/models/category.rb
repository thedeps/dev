class Category < ActiveRecord::Base
	has_many :user
	
  #Validações
  validates :name, presence: true
  validates :name, uniqueness: true
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
  Category.new {
     def should_generate_new_friendly_id?
       slug.blank? || :name_changed?
     end
   }
end
