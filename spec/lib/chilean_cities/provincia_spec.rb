require 'spec_helper'

describe ChileanCities::Provincia do

  describe 'provides a Schema.org interface', public: true do
    it_behaves_like 'an AdministrativeArea'
  end

  it_behaves_like 'a list of ChileanCities::Comuna'

  it_behaves_like 'part of a ChileanCities::Region'

  # validations

  it 'has a valid factory', private: true do
    expect(FactoryGirl.build(:provincia)).to be_valid
  end

  it 'requires a name', private: true do
    expect(FactoryGirl.build(:provincia, name: nil)).not_to be_valid
  end
end
