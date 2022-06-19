module Types
  class LocationType < Types::BaseObject
    description 'location data'
    field :latitude, Float, null: false
    field :longtitude, Float, null: false

    def latitude
      object.first
    end

    def longtitude
      object.second
    end
  end
end
