class Location < ApplicationRecord
  include JpPrefecture
  jp_prefecture :prefecture_code

  has_many :breweries

  def name_en
    self.prefecture.name_e
  end

  def name_ja
    self.prefecture.name
  end

  def localized_name
    locale = I18n.locale
    self.send("name_#{locale}")
  end

  # Other JpPrefecture data can be accesssed by these methods:
  # location.prefecture.code => 13
  # location.prefecture.name_h => "とうきょうと"
  # location.prefecture.name_k => "トウキョウト"
  # location.prefecture.area => "関東"
  # location.prefecture.type => "都"
end
