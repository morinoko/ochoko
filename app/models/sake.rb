class Sake < ApplicationRecord
  belongs_to :brewery
  has_many :notes
  
  def localized_name
    if I18n.locale == :ja
      "#{japanese_name} #{sake_type}"
    else
      "#{romanized_name} #{sake_type}"
    end
  end
end
