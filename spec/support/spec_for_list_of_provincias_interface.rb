RSpec.shared_examples 'a list of ChileanCities::Provincia' do

  let(:provincias_list) { described_class.new() }

  it_behaves_like 'a list of ChileanCities::Comuna'

  it 'responds to #provincias', public: true do
    expect(provincias_list).to respond_to :provincias
  end

  it 'responds to #append_provincia', private: true do
    expect(provincias_list).to respond_to :append_provincia
  end

  describe '#append_provincia', private: true do

    it 'appends the provincia to the provincias list if not already present' do
      provincia = build(:provincia)
      expect{ provincias_list.append_provincia(provincia) }.to change{
        provincias_list.provincias
      }.from([]).to([provincia])
    end
  end
end
