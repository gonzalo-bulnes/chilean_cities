require 'chilean_cities/provincia_part'
require 'chilean_cities/region_part'

module ChileanCities

  class Comuna
    include ProvinciaPart
    include RegionPart

    attr_reader :code
  end
end
