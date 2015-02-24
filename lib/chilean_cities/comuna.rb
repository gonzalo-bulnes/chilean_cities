require 'active_model'

require 'chilean_cities/provincia_part'
require 'chilean_cities/region_part'
require 'schemas/place'

module ChileanCities

  class Comuna
    include ActiveModel::Model

    include ProvinciaPart
    include RegionPart
    include Schemas::Place

    attr_accessor :code

    validates_presence_of :code, :name
  end
end
