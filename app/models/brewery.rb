class Brewery < ApplicationRecord
  belongs_to :location
  has_many :sakes
  
  validates :japanese_name, presence: true
  validates :hiragana_name, presence: true
  validates :romanized_name, presence: true
  validates :location_id, presence: true
  
  def localized_name
    if I18n.locale == :ja
      "#{japanese_name} (#{hiragana_name})"
    else
      "#{romanized_name} (#{japanese_name})"
    end
  end
end
