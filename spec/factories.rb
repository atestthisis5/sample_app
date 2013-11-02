
FactoryGirl.define do
  factory :user do
    # name     "Michael Hartl"
    sequence(:name)  { |n| "Person #{n}" }
    # email    "michael@example.com"
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "foobar"
    password_confirmation "foobar"
  end
end

