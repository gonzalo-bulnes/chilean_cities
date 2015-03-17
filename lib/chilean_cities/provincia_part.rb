module ChileanCities
  module ProvinciaPart

    def initialize
      raise NotImplementedError, 'ProvinciaPart must implement initialize()'
      @provincia = nil
    end

    attr_accessor :provincia
  end
end
