RSpec.shared_examples 'a list of ChileanCities::Comuna' do

  let(:comunas_list) { described_class.new() }

  it 'responds to :comunas', public: true do
    expect(comunas_list).to respond_to :comunas
  end
end
