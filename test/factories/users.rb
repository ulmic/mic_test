FactoryGirl.define do
  factory :user do
    card_num { generate :integer }
    district { generate :string }
    fio { generate :string }
  end
end
