class Sake < ApplicationRecord
  GRADES = {
    :honjozo =>           { ja: "本醸造",
                            en: "Honjōzō" },
    :tokubetsu_honjozo => { ja: "特別本醸造",
                            en: "Tokubetsu Honjōzō" },
    :ginjo =>             { ja: "吟醸",
                            en: "Ginjō" },
    :daiginjo =>          { ja: "大吟醸",
                            en: "Daiginjō" },
    :junmai =>            { ja: "純米",
                            en: "Junmai" },
    :tokubetsu_junmai =>  { ja: "特別純米",
                            en: "Tokubetsu Junmai" },
    :junmai_ginjo =>      { ja: "純米吟醸",
                            en: "Junmai Ginjō" },
    :junmai_daiginjo =>   { ja: "純米大吟醸",
                            en: "Junmai Daiginjō" }
  }
  
  belongs_to :brewery
  has_many :tasting_notes, dependent: :destroy

  validates :name_ja, presence: true
  validates :name_en, presence: true
  validates :grade, presence: true
  validates :brewery_id, presence: true

  scope :rated, -> { joins(:tasting_notes).distinct("tasting_notes.sake_id") }

  def self.grades_en
    GRADES.map { |key, value| GRADES[key][:en] }
  end

  def self.grades_ja
    GRADES.map { |key, value| GRADES[key][:ja] }
  end
  
  def localized_name
    locale = I18n.locale
    localized_name = self.send("name_#{locale}")
    
    localized_name += " #{localized_sake_type}" if localized_sake_type
  end

  def localized_grade
    locale = I18n.locale
    Sake::GRADES[self.grade.to_sym][locale]
  end

  def localized_sake_type
    locale = I18n.locale
    localized_method = "sake_type_#{locale}"

    self.send("sake_type_#{locale}") if self.send("sake_type_#{locale}")
  end

  def localized_location
    self.brewery.location.localized_name
  end
end
