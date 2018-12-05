class Brewery < ApplicationRecord
  belongs_to :location
  has_many :sakes
end
