require 'spec_helper'

describe ChileanCities::Factory, public: true do

  let(:subject) { subject = ChileanCities::Factory.instance }

  it 'class is a kind of Singleton' do
    expect(ChileanCities::Factory).to respond_to :instance
  end

  it 'responds to :generate!' do
    p subject.inspect
    expect(subject).to respond_to :generate!
  end

  describe '#generate!' do

    it 'generates Comuna, Provincia and Region objects from the data' do
      expect(subject.generate!).to eq({ comunas_count: 346, provincias_count: 54, regiones_count: 15 })
    end
  end
end
