FactoryGirl.define do
  sequence :string do |n|
    "string%09d" % n
  end
··
  sequence :number do |n|
    n
  end

  sequence :email do |n|
    "user%d@example.com" % n
  end

  sequence :url do |n|
    "http://www.example#{n}.com" % n
  end
end
