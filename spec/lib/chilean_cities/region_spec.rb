require 'spec_helper'

describe ChileanCities::Region do

  describe 'provides a Schema.org interface', public: true do
    it_behaves_like 'a State'
  end

  it 'responds to :iso_3166_2', public: true do
    expect(subject).to respond_to :iso_3166_2
  end

  it_behaves_like 'a list of ChileanCities::Provincia'

  # validations

  it 'has a valid factory', private: true do
    expect(build(:region)).to be_valid
  end

  it 'requires a name', private: true do
    expect(build(:region, name: nil)).not_to be_valid
  end

  it 'requires an ISO 3166-2:CL code', private: true do
    # see https://en.wikipedia.org/wiki/ISO_3166-2:CL
    expect(build(:region, iso_3166_2: nil)).not_to be_valid
  end

  it 'requires iso_3166_2 to be a valid ISO 3166-2:CL code', private: true do
    expect(build(:region, iso_3166_2: 'CP-AN')).not_to be_valid
    expect(build(:region, iso_3166_2: 'CL-AND')).not_to be_valid
    expect(build(:region, iso_3166_2: 'CL_AN')).not_to be_valid
    expect(build(:region, iso_3166_2: 'CLAN')).not_to be_valid
    expect(build(:region, iso_3166_2: 'CL-AN')).to be_valid
    expect(build(:region, iso_3166_2: 'CL-A2')).not_to be_valid
    expect(build(:region, iso_3166_2: 'ACL-AN')).not_to be_valid
    expect(build(:region, iso_3166_2: 'AL-AN')).not_to be_valid
  end

  describe '#provincias', data: true, private: true do

    it 'returns a list of ChileanCities::Provincia' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.regiones.sample

      expect(subject.provincias).not_to be_empty
      expect(subject.provincias.sample).to be_instance_of ChileanCities::Provincia
    end
  end

  describe '#comunas', data: true, private: true do

    it 'returns a list of ChileanCities::Comuna' do
      chile = ChileanCities::Factory.instance
      chile.generate!

      subject = chile.regiones.sample

      expect(subject.comunas).not_to be_empty
      expect(subject.comunas.sample).to be_instance_of ChileanCities::Comuna
    end
  end
end
