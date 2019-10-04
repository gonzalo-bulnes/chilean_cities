require 'multi_json'

module ChileanCities

  class Factory
    include Singleton

    attr_reader :regiones
    attr_reader :provincias
    attr_reader :comunas

    def generate!

      @regiones = []
      @provincias = []
      @comunas = []

      data_file = File.read(File.dirname(__FILE__) + '/../../data/comunas.json')

      data = MultiJson.load(data_file, symbolize_keys: true)

      data.each do |datum|
        comuna = Comuna.new(datum[:name], datum[:code])

        provincia = @provincias.select { |provincia| provincia.name == datum[:provincia] }.first ||
                    Provincia.new(datum[:provincia])

        region = @regiones.select { |region| region.name == datum[:region] }.first ||
                 Region.new(datum[:region], datum[:region_iso_3166_2])

        comuna.region = region
        comuna.provincia = comuna.contained_in = provincia
        @comunas << comuna unless @comunas.include? comuna

        provincia.region = provincia.contained_in = region
        provincia.append_comuna(comuna)
        @provincias << provincia unless @provincias.include? provincia

        region.append_comuna(comuna)
        region.append_provincia(provincia)
        @regiones << region unless @regiones.include? region
      end
      { comunas_count: @comunas.count, provincias_count: @provincias.count, regiones_count: @regiones.count }
    end
  end
end
