require 'rails_helper'

RSpec.describe "organization_address_types/new", type: :view do
  before(:each) do
    assign(:organization_address_type, OrganizationAddressType.new(
      name: "MyString",
      code: "MyString"
    ))
  end

  it "renders new organization_address_type form" do
    render

    assert_select "form[action=?][method=?]", organization_address_types_path, "post" do

      assert_select "input[name=?]", "organization_address_type[name]"

      assert_select "input[name=?]", "organization_address_type[code]"
    end
  end
end
