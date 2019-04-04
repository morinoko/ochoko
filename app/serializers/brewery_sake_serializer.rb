class BrewerySakeSerializer < ActiveModel::Serializer
  attributes :id, :localized_grade, :localized_name, :hiragana_name, :romanized_name, :japanese_name, :localized_location
end
