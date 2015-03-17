RSpec.shared_examples 'part of a ChileanCities::Provincia' do

  let(:part_of_provincia) { described_class.new() }

  it_behaves_like 'part of a ChileanCities::Region'

  it 'responds to #provincia', public: true do
    expect(part_of_provincia).to respond_to :provincia
  end

  it 'responds to #provincia=', private: true do
    expect(part_of_provincia).to respond_to :provincia=
  end

  describe '#provincia' do

    it 'returns a ChileanCities::Provincia' do
      pending 'Not yet implemented.'
      expect(part_of_provincia.provincia).to be_instance_of ChileanCities::Provincia
    end
  end
end
