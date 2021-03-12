FactoryBot.define do
  factory :organization do
    organization_type_id { 1 }
    name { "MyString" }
    description { "MyText" }
    external_identifier { "MyString" }
  end
end
