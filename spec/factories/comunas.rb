FactoryGirl.define do
  factory :comuna, class: ChileanCities::Comuna do
    code 15102
    name 'Camarones'
  end

  factory :invalid_comuna, class: ChileanCities::Comuna do
    # nop
  end
end
