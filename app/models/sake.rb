class Sake < ApplicationRecord
  belongs_to :brewery
  has_many :notes

  GRADES = {
    :honjozo => { japanese: "本醸造",
                  english: "Honjōzō" },
    :tokubetsu_honjozo => { japanese: "特別本醸造",
                            english: "Tokubetsu Honjōzō" },
    :ginjo => { japanese: "吟醸",
                english: "Ginjō" },
    :daiginjo => { japanese: "大吟醸",
                    english: "Daiginjō" },
    :junmai => { japanese: "純米",
                  english: "Junmai" },
    :tokubetsu_junmai => { japanese: "特別純米",
                           english: "Tokubetsu Junmai" },
    :junmai_ginjo => { japanese: "純米吟醸",
                       english: "Junmai Ginjō" },
    :junmai_daiginjo => { japanese: "純米大吟醸",
                          english: "Junmai Daiginjō" }
  }

  def localized_name
    if I18n.locale == :ja
      "#{japanese_name} #{sake_type}"
    else
      "#{romanized_name} #{sake_type}"
    end
  end

  def self.grades_english
    GRADES.map { |key, value| GRADES[key][:english] }
  end

  def self.grades_japanese
    GRADES.map { |key, value| GRADES[key][:japanese] }
  end
end
