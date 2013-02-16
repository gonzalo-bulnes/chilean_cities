FactoryGirl.define do

  factory :comuna, class: ChileanCities::Comuna do
    name 'Camarones'
    code '15102'
    provincia 'Arica'
    region 'Arica y Parinacota'
    region_number 'XV'
  end
end
