class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :localized_name, :romanized_name, :hiragana_name, :japanese_name, :localized_location, :next_id, :previous_id
  
  def next_id
    self.object.next ?  self.object.next.id : nil
  end
  
  def previous_id
    self.object.previous ? self.object.previous.id : nil
  end
end
