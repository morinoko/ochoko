class TastingNote < ApplicationRecord
  belongs_to :user
  belongs_to :sake

  validates :sake_id, presence: true

  def self.user_tasting_note_for(sake:, user:)
    if user.sakes_with_tasting_notes.include?(sake)
      TastingNote.where(
        "user_id = :user_id AND sake_id = :sake_id",
        user_id: user.id, sake_id: sake.id
      ).first
    end
  end
end
