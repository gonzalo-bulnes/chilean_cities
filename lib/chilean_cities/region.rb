require 'active_model'

require 'chilean_cities/comunas_list'
require 'chilean_cities/provincias_list'

module ChileanCities

  class Region
    include ActiveModel::Model

    include ComunasList
    include ProvinciasList
    include Schemas::Place

    attr_accessor :iso_3166_2

    def initialize(*args)
      @name = args.shift
      @iso_3166_2 = args.shift
      @comunas = []
      @provincias = []
    end

    validates_presence_of :iso_3166_2, :name
    validates_format_of :iso_3166_2, with: /\ACL-[A-Z][A-Z]\z/ # ISO 3166-2:CL
  end
end
