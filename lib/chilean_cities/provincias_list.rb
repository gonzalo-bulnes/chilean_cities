module ChileanCities
  module ProvinciasList

    def initialize
      raise NotImplementedError, 'ProvinciasList must implement initialize()'
    end

    attr_reader :provincias

    def append_provincia(provincia)
      @provincias << provincia unless @provincias.include? provincia
    end
  end
end
