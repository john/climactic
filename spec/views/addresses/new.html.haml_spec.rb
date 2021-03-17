require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      contact_id: 1,
      address_line_1: "MyString",
      address_line_2: "MyString",
      postal_code: "MyString"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[contact_id]"

      assert_select "input[name=?]", "address[address_line_1]"

      assert_select "input[name=?]", "address[address_line_2]"

      assert_select "input[name=?]", "address[postal_code]"
    end
  end
end
