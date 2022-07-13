FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
    latlng {"{\"lat\":35.681345050184035,\"lng\":139.7671208812525}"}
  end
end
