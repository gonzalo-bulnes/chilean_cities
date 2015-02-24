require 'active_model'

require 'chilean_cities/comunas_list'
require 'chilean_cities/region_part'

module ChileanCities

  class Provincia
    include ActiveModel::Model

    include ComunasList
    include RegionPart
    include Schemas::Place

    validates_presence_of :name
  end
end