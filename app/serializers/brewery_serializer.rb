class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :localized_name, :romanized_name, :hiragana_name, :japanese_name, :localized_location
end
