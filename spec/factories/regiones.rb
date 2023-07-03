FactoryBot.define do
  factory :region, class: ChileanCities::Region do
    name { 'Arica y Parinacota' }
    iso_3166_2 { 'CL-AP' }
  end
end
