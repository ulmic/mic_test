FactoryGirl.define do
  factory :user do
    card_num { generate :integer }
    district
    fio { generate :string }
  end
end
