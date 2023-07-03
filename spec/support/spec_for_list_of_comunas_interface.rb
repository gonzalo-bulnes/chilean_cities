RSpec.shared_examples 'a list of ChileanCities::Comuna' do

  let(:comunas_list) { described_class.new() }

  it 'responds to #comunas', public: true do
    expect(comunas_list).to respond_to :comunas
  end

  it 'responds to #append_comuna', private: true do
    expect(comunas_list).to respond_to :append_comuna
  end

  describe '#append_comuna', private: true do

    it 'appends the comuna to the comunas list if not already present' do
      comuna = build(:comuna)
      expect{ comunas_list.append_comuna(comuna) }.to change{
        comunas_list.comunas
      }.from([]).to([comuna])
    end
  end
end
