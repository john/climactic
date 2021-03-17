require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      contact_id: 1,
      address_line_1: "MyString",
      address_line_2: "MyString",
      postal_code: "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[contact_id]"

      assert_select "input[name=?]", "address[address_line_1]"

      assert_select "input[name=?]", "address[address_line_2]"

      assert_select "input[name=?]", "address[postal_code]"
    end
  end
end
