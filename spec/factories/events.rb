FactoryGirl.define do
  factory :event do

    name                 { Faker::Name.name }
    description          { Faker::Lorem.sentence(40) }
    location             { Faker::Address.city }
    price                { Faker::Commerce.price }
    capacity             50
    includes_food        true
    includes_drinks      true
    starts_at            "2017-09-20"
    ends_at              "2017-09-25"
    user                 { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end



end
