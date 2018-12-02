class Sake < ApplicationRecord
  belongs_to :brewery
  has_many :notes
end
