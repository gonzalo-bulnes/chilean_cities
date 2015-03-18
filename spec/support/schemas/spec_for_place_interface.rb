RSpec.shared_examples 'a Place' do

  let(:place) { described_class.new() }

  it_behaves_like 'a Thing'

  it 'responds to :contained_in', public: true do
    expect(place).to respond_to :contained_in
  end

  it 'responds to :has_map', public: true do
    expect(place).to respond_to :has_map
  end
end
