RSpec.shared_examples 'an AdministrativeArea' do

  let(:administrative_area) { described_class.new() }

  it_behaves_like 'a Place'
end
