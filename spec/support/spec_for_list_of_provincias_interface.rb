RSpec.shared_examples 'a list of ChileanCities::Provincia' do

  let(:provincias_list) { described_class.new() }

  it_behaves_like 'a list of ChileanCities::Comuna'

  it 'responds to #provincias', public: true do
    expect(provincias_list).to respond_to :provincias
  end

  it 'responds to #append_provincia', private: true do
    expect(provincias_list).to respond_to :append_provincia
  end

  describe '#provincias', public: true do

    it 'returns a list of ChileanCities::Provincia' do
      pending 'Not yet implemented.'
      expect(provincias_list.provincias).not_to be_empty
      provincias_list.provincias.each do |provincia|
        expect(provincia).to be_instance_of ChileanCities::Provincia
      end
    end
  end

  describe '#append_provincia', private: true do

    it 'appends the provincia to the provincias list if not already present' do
      provincia = FactoryGirl.build(:provincia)
      expect{ provincias_list.append_provincia(provincia) }.to change{
        provincias_list.provincias
      }.from([]).to([provincia])
    end
  end
end
