FactoryBot.define do
  factory :address do
    contact_id { 1 }
    address_line_1 { "MyString" }
    address_line_2 { "MyString" }
    postal_code { "MyString" }
  end
end
