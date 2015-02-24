require 'spec_helper'

describe ChileanCities::Comuna, public: true do

  describe 'provides a Schema.org interface' do
    it_behaves_like 'a City'
  end

  it_behaves_like 'part of a ChileanCities::Provincia'

  it 'responds to :code' do
    expect(subject).to respond_to :code
  end

  # validations

  it 'has a valid factory', private: true do
    expect(FactoryGirl.build(:comuna)).to be_valid
  end

  it 'requires a name' do
    expect(FactoryGirl.build(:comuna, name: nil)).not_to be_valid
  end

  it 'requires a code' do
    expect(FactoryGirl.build(:comuna, code: nil)).not_to be_valid
  end
end
