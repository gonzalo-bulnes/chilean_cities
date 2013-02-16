module ChileanCities
  class Comuna < ActiveRecord::Base
    attr_accessible :name, :code, :provincia, :region, :region_number
  end
end
