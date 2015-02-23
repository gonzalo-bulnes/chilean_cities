require 'spec_helper'

describe ChileanCities::Provincia do

  describe 'provides a Schema.org interface' do
    it_behaves_like 'an AdministrativeArea'
  end

  it_behaves_like 'a list of ChileanCities::Comuna'

  it_behaves_like 'part of a ChileanCities::Region'
end
