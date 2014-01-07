FactoryGirl.define do
  factory :user do
    card_num { generate :integer }
    department { generate :string }
    fio { generate :string }
  end
end
