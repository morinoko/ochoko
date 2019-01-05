module SakesHelper
  def sake_grades_for_select
    language = I18n.locale == :ja ? :japanese : :english
    
    Sake::GRADES.map { |key, value| [Sake::GRADES[key][language], key] }
  end
end
