RSpec.shared_examples 'a list of ChileanCities::Comuna' do

  let(:comunas_list) { described_class.new() }

  it 'responds to #comunas', public: true do
    expect(comunas_list).to respond_to :comunas
  end

  describe '#comunas' do

    it 'returns a list of ChileanCities::Comuna' do
      pending 'Not yet implemented.'
      expect(comunas_list.comunas).not_to be_empty
      comunas_list.comunas.each do |comuna|
        expect(comuna).to be_instance_of ChileanCities::Comuna
      end
    end
  end
end
