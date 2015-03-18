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

    def initialize(*args)
      @name = args.shift
      @code = args.shift
      @provincia = args.shift
      @region = args.shift
    end

    validates_presence_of :code, :name
  end
end
