class Location < ApplicationRecord
  include JpPrefecture
  jp_prefecture :prefecture_code
  
  has_many :breweries
  
  def romanized_name
    self.prefecture.name_e
  end
  
  def japanese_name
    self.prefecture.name
  end
end
