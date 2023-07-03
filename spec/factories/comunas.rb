FactoryBot.define do
  factory :comuna, class: ChileanCities::Comuna do
    code { 15102 }
    name { 'Camarones' }
  end
end
