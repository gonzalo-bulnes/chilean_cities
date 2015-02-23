require 'chilean_cities/provincia_part'
require 'chilean_cities/region_part'
require 'schemas/place'

module ChileanCities

  class Comuna
    include ProvinciaPart
    include RegionPart
    include Schemas::Place

    attr_reader :code
  end
end
