FactoryGirl.define do
  factory :user do
    email {generate :email}
    password {generate :string}
    name {generate :string}
    nickname {generate :string}

    factory :client, class: Client do
      bio {generate :string}
      video {generate :video}
      balance {generate :number}
    end

    factory :donor, class: Donor do
      total {generate :number}
    end

    factory :partner, class: Partner do
      bio {generate :string}
      homepage {generate :string}
    end
  end
end
