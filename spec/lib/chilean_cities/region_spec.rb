require 'spec_helper'

describe ChileanCities::Region, public: true do

  describe 'provides a Schema.org interface' do
    it_behaves_like 'a State'
  end

  it 'responds to :iso_3166_2' do
    expect(subject).to respond_to :iso_3166_2
  end

  it_behaves_like 'a list of ChileanCities::Provincia'

  # validations

  it 'has a valid factory', private: true do
    expect(FactoryGirl.build(:region)).to be_valid
  end

  it 'requires a name' do
    expect(FactoryGirl.build(:region, name: nil)).not_to be_valid
  end

  it 'requires an ISO 3166-2:CL code' do
    # see https://en.wikipedia.org/wiki/ISO_3166-2:CL
    expect(FactoryGirl.build(:region, iso_3166_2: nil)).not_to be_valid
  end

  it 'requires iso_3166_2 to be a valid ISO 3166-2:CL code' do
    expect(FactoryGirl.build(:region, iso_3166_2: 'CP-AN')).not_to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'CL-AND')).not_to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'CL_AN')).not_to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'CLAN')).not_to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'CL-AN')).to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'CL-A2')).not_to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'ACL-AN')).not_to be_valid
    expect(FactoryGirl.build(:region, iso_3166_2: 'AL-AN')).not_to be_valid
  end
end
