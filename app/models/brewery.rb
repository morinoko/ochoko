class Brewery < ApplicationRecord
  belongs_to :location
  has_many :sakes
  
  def localized_name
    if I18n.locale == :ja
      japanese_name
    else
      romanized_name
    end
  end
end
