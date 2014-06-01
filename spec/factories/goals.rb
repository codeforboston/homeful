FactoryGirl.define do
  factory :goal do
    title {generate :string}
    amount {generate :number}
    description {generate :string}
    client_id {generate :number}
  end
end
