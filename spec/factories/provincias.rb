FactoryGirl.define do
  factory :provincia, class: ChileanCities::Provincia do
    name 'Arica'
  end

  factory :invalid_provincia, class: ChileanCities::Provincia do
    # nop
  end
end
