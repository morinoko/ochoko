# t.string "japanese_name"
# t.string "romanized_name"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "location_id"
# t.string "hiragana_name"

class Brewery < ApplicationRecord
  belongs_to :location
  has_many :sakes, dependent: :destroy

  validates :japanese_name, presence: true
  validates :japanese_name, uniqueness: { scope: :location_id,
                                          message: I18n.t(:taken, scope: 'activerecord.errors.models.brewery') }
  validates :hiragana_name, presence: true
  validates :romanized_name, presence: true
  validates :romanized_name, uniqueness: { scope: :location_id,
                                           message: I18n.t(:taken, scope: 'activerecord.errors.models.brewery') }
  validates :location_id, presence: true
  
  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end

  def localized_name
    I18n.locale == :ja ? japanese_name : romanized_name
  end

  def localized_location
    self.location.localized_name
  end
end
