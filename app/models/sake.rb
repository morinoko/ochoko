class Sake < ApplicationRecord
  belongs_to :brewery
  has_many :notes
  
  def localized_name
    if I18n.locale == :ja
      "#{japanese_name} #{type}"
    else
      "#{romanized_name} #{type}"
    end
  end
end
