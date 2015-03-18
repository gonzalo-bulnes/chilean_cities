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

  describe '#comunas', data: true, private: true do

    it 'returns a list of ChileanCities::Comuna' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.provincias.sample

      expect(subject.comunas).not_to be_empty
      expect(subject.comunas.sample).to be_instance_of ChileanCities::Comuna
    end
  end

  describe '#region', data: true, private: true do

    it 'returns a ChileanCities::Region' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.provincias.sample
      expect(subject.region).not_to be_nil
      expect(subject.region).to be_instance_of ChileanCities::Region
    end
  end

  describe '#contained_in', data: true, private: true do

    it 'returns a ChileanCities::Region' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.provincias.sample
      expect(subject.contained_in).not_to be_nil
      expect(subject.contained_in).to be_instance_of ChileanCities::Region
    end
  end
end
