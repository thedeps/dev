class Match < ActiveRecord::Base
  belongs_to :team1, class_name: 'Team', foreign_key: 'team1_id'
  belongs_to :team2, class_name: 'Team', foreign_key: 'team2_id'
  belongs_to :championship
  
  def teams
    [team1, team2]
  end
  
  #Validações
  validates :team1_id, :team2_id, :date_match, presence: true
end
