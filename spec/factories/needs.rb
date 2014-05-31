FactoryGirl.define do
  factory :need do
    client
    title {generate :string}
  end
end
