class RatingScale < ApplicationRecord
  # scope :data, -> { where(:attibute => value)}
  # Ex:- scope :active, -> {where(:active => true)}
  def self.data
    select("id", "question", "teaming_stages", "appears_days", "frequency", "type_name", "role", "is_required", "conditions", "mapping").as_json    
  end
  
end
