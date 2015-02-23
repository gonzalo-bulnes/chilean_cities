RSpec.shared_examples 'a list of ChileanCities::Provincia' do

  let(:provincias_list) { described_class.new() }

  it_behaves_like 'a list of ChileanCities::Comuna'

  it 'responds to :provincias', public: true do
    expect(comunas_list).to respond_to :provincias
  end
end
