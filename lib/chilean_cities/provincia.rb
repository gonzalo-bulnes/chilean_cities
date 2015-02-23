require 'chilean_cities/comunas_list'
require 'chilean_cities/region_part'

module ChileanCities

  class Provincia
    include ComunasList
    include RegionPart
  end
end