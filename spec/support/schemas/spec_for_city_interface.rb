RSpec.shared_examples 'a City' do

  let(:place) { described_class.new() }

  it_behaves_like 'an AdministrativeArea'
end
