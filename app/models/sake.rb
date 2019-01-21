class Sake < ApplicationRecord
  belongs_to :brewery
  has_many :tasting_notes
  scope :rated, -> { joins(:tasting_notes) }
  
  validates :japanese_name, presence: true
  validates :romanized_name, presence: true

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

  def self.grades_english
    GRADES.map { |key, value| GRADES[key][:english] }
  end

  def self.grades_japanese
    GRADES.map { |key, value| GRADES[key][:japanese] }
  end
  
  def localized_name
    localized_name = I18n.locale == :ja ? japanese_name : romanized_name
    
    localized_name += " #{localized_sake_type}" if localized_sake_type
  end
  
  def localized_grade
    if I18n.locale == :ja
      Sake::GRADES[self.grade.to_sym][:japanese]
    else
      Sake::GRADES[self.grade.to_sym][:english]
    end
  end
  
  def localized_sake_type
    if I18n.locale == :ja
      sake_type_japanese
    else
      sake_type_romanized
    end
  end
  
  def localized_location
    self.brewery.location.localized_name
  end
end
