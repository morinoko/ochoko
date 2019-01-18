class TastingNote < ApplicationRecord
  belongs_to :user
  belongs_to :sake
  
  validates :sake_id, presence: true
end
