class MapRoute < ApplicationRecord
  has_many :map_stops, dependent: :destroy
end
