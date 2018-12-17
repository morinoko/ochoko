class Brewery < ApplicationRecord
  belongs_to :location
  has_many :sakes
  
  def localized_name
    if I18n.locale == :ja
      "#{japanese_name} (#{hiragana_name})"
    else
      "#{romanized_name} (#{japanese_name})"
    end
  end
end
