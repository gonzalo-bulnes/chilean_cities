require 'chilean_cities/comunas_list'
require 'chilean_cities/provincias_list'

module ChileanCities

  class Region
    include ComunasList
    include ProvinciasList
    include Schemas::Place

    attr_reader :iso_3166_2
  end
end
