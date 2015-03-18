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

  describe '#provincia', data: true, private: true do

    it 'returns a ChileanCities::Provincia' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.comunas.sample

      expect(subject.provincia).not_to be_nil
      expect(subject.provincia).to be_instance_of ChileanCities::Provincia
    end
  end

  describe '#region', data: true, private: true do

    it 'returns a ChileanCities::Region' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.comunas.sample

      expect(subject.region).not_to be_nil
      expect(subject.region).to be_instance_of ChileanCities::Region
    end
  end

  describe '#contained_in', data: true, private: true do

    it 'returns a ChileanCities::Provincia' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.comunas.sample

      expect(subject.contained_in).not_to be_nil
      expect(subject.contained_in).to be_instance_of ChileanCities::Provincia
    end
  end
end
