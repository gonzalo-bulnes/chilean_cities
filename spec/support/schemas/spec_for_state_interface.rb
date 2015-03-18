RSpec.shared_examples 'a State' do

  let(:place) { described_class.new() }

  it_behaves_like 'an AdministrativeArea'
end
