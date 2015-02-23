require 'spec_helper'

describe ChileanCities::Region do

  describe 'provides a Schema.org interface' do
    it_behaves_like 'a State'
  end

  it 'responds to :iso_3166_2', public: true do
    expect(thing).to respond_to :iso_3166_2
  end

  it_behaves_like 'a list of ChileanCities::Provincia'
end
