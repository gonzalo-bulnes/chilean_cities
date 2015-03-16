RSpec.shared_examples 'a list of ChileanCities::Provincia' do

  let(:provincias_list) { described_class.new() }

  it_behaves_like 'a list of ChileanCities::Comuna'

  it 'responds to #provincias', public: true do
    expect(provincias_list).to respond_to :provincias
  end

  describe '#provincias' do

    it 'returns a list of ChileanCities::Provincia' do
      pending 'Not yet implemented.'
      expect(provincias_list.provincias).not_to be_empty
      provincias_list.provincias.each do |provincia|
        expect(provincia).to be_instance_of ChileanCities::Provincia
      end
    end
  end
end
