module SakesHelper
  def sake_grades_for_select
    locale = I18n.locale
    Sake::GRADES.map { |key, value| [Sake::GRADES[key][locale], key] }
  end
end
