class Championship < ActiveRecord::Base
  #Associações
  has_many :matches, dependent: :destroy
  
  #Validações
  validates :name, presence: true
  validates :name, uniqueness: true
  
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]
  
  Championship.new {
     def should_generate_new_friendly_id?
       slug.blank? || :name_changed?
     end
   }
  
end
