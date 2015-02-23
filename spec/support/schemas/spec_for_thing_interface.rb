RSpec.shared_examples 'a Thing' do

  let(:thing) { described_class.new() }

  it 'responds to :name', public: true do
    expect(thing).to respond_to :name
  end
end
