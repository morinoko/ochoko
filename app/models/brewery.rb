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

  def localized_name
    if I18n.locale == :ja
      "#{japanese_name}"
    else
      "#{romanized_name}"
    end
  end

  def localized_location
    self.location.localized_name
  end
end
