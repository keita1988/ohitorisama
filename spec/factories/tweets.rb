FactoryBot.define do
  factory :tweet do
    coffee_price      { 500 }
    tasty_id            { 2 }
    relaxation_id       { 2 }
    under_ground_id     { 2 }
    store_name       { '純喫茶saboru' }
    address          { '渋谷区渋谷１−１−１' }
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
