module ChileanCities
  module ComunasList

    def initialize
      raise NotImplementedError, 'ComunasList must implement initialize()'
    end

    attr_reader :comunas

    def append_comuna(comuna)
      @comunas << comuna unless @comunas.include? comuna
    end
  end
end
