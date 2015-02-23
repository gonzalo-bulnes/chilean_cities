RSpec.shared_examples 'part of a ChileanCities::Region' do

  let(:part_of_region) { described_class.new() }

  it 'responds to :region', public: true do
    expect(part_of_region).to respond_to :region
  end
end
