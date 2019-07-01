class Sake < ApplicationRecord
  GRADES = {
    :honjozo =>           { japanese: "本醸造",
                            english: "Honjōzō" },
    :tokubetsu_honjozo => { japanese: "特別本醸造",
                            english: "Tokubetsu Honjōzō" },
    :ginjo =>             { japanese: "吟醸",
                            english: "Ginjō" },
    :daiginjo =>          { japanese: "大吟醸",
                            english: "Daiginjō" },
    :junmai =>            { japanese: "純米",
                            english: "Junmai" },
    :tokubetsu_junmai =>  { japanese: "特別純米",
                            english: "Tokubetsu Junmai" },
    :junmai_ginjo =>      { japanese: "純米吟醸",
                            english: "Junmai Ginjō" },
    :junmai_daiginjo =>   { japanese: "純米大吟醸",
                            english: "Junmai Daiginjō" }
  }
  
  belongs_to :brewery
  has_many :tasting_notes, dependent: :destroy

  validates :name_ja, presence: true
  validates :name_en, presence: true
  validates :grade, presence: true
  validates :brewery_id, presence: true

  scope :rated, -> { joins(:tasting_notes).distinct("tasting_notes.sake_id") }

  def self.grades_english
    GRADES.map { |key, value| GRADES[key][:english] }
  end

  def self.grades_japanese
    GRADES.map { |key, value| GRADES[key][:japanese] }
  end
  
  def localized_name
    localized_name = I18n.locale == :ja ? name_ja : name_en

    localized_name += " #{localized_sake_type}" if localized_sake_type
  end

  def localized_grade
    I18n.locale == :ja ? Sake::GRADES[self.grade.to_sym][:japanese] : Sake::GRADES[self.grade.to_sym][:english]
  end

  def localized_sake_type
    if I18n.locale == :ja
      sake_type_ja if sake_type_ja
    else
      sake_type_en if sake_type_en
    end
  end

  def localized_location
    self.brewery.location.localized_name
  end
end
