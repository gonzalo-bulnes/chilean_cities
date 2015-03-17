require 'spec_helper'

describe ChileanCities::Comuna do

  describe 'provides a Schema.org interface', public: true do
    it_behaves_like 'a City'
  end

  it_behaves_like 'part of a ChileanCities::Provincia'

  it 'responds to :code', public: true do
    expect(subject).to respond_to :code
  end

  # validations

  it 'has a valid factory', private: true do
    expect(FactoryGirl.build(:comuna)).to be_valid
  end

  it 'requires a name', private: true do
    expect(FactoryGirl.build(:comuna, name: nil)).not_to be_valid
  end

  it 'requires a code', private: true do
    expect(FactoryGirl.build(:comuna, code: nil)).not_to be_valid
  end
end
