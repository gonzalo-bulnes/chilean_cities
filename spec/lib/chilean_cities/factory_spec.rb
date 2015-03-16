require 'spec_helper'

describe ChileanCities::Factory, public: true do

  before(:all) do
    subject = ChileanCities::Factory.instance
  end

  it 'class is a kind of Singleton' do
    expect(ChileanCities::Factory).to respond_to :instance
  end
end
