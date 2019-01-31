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

  def localized_name
    I18n.locale == :ja ? japanese_name : romanized_name
  end

  # Other JpPrefecture data can be accesssed by these methods:
  # location.prefecture.code => 13
  # location.prefecture.name_h => "とうきょうと"
  # location.prefecture.name_k => "トウキョウト"
  # location.prefecture.area => "関東"
  # location.prefecture.type => "都"
end
