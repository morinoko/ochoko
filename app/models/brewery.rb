class Brewery < ApplicationRecord
  belongs_to :location
  has_many :sakes, dependent: :destroy

  validates :name_ja, presence: true
  validates :name_ja, uniqueness: { scope: :location_id,
                                          message: I18n.t(:taken, scope: 'activerecord.errors.models.brewery') }
  validates :name_hiragana, presence: true
  validates :name_en, presence: true
  validates :name_en, uniqueness: { scope: :location_id,
                                           message: I18n.t(:taken, scope: 'activerecord.errors.models.brewery') }
  validates :location_id, presence: true

  def localized_name
    locale = I18n.locale
    self.send("name_#{locale}")
  end

  def localized_location
    self.location.localized_name
  end
end
