class TastingNote < ApplicationRecord
  belongs_to :user
  belongs_to :sake
end
