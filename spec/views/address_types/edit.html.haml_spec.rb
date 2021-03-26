require 'rails_helper'

RSpec.describe "address_types/edit", type: :view do
  before(:each) do
    @address_type = assign(:address_type, AddressType.create!(
      name: "MyString",
      code: "MyString"
    ))
  end

  it "renders the edit address_type form" do
    render

    assert_select "form[action=?][method=?]", address_type_path(@address_type), "post" do

      assert_select "input[name=?]", "address_type[name]"

      assert_select "input[name=?]", "address_type[code]"
    end
  end
end
