require 'spec_helper'

describe ChileanCities::Comuna, public: true do

  describe 'provides a Schema.org interface' do
    it_behaves_like 'a City'
  end

  it_behaves_like 'part of a ChileanCities::Provincia'

  it 'responds to :code' do
    expect(subject).to respond_to :code
  end
end
