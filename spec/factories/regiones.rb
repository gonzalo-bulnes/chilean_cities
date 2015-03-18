FactoryGirl.define do
  factory :region, class: ChileanCities::Region do
    name 'Arica y Parinacota'
    iso_3166_2 'CL-AP'
  end

  factory :invalid_region, class: ChileanCities::Region do
    # nop
  end
end
