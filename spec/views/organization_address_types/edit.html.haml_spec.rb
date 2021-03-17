require 'rails_helper'

RSpec.describe "organization_address_types/edit", type: :view do
  before(:each) do
    @organization_address_type = assign(:organization_address_type, OrganizationAddressType.create!(
      name: "MyString",
      code: "MyString"
    ))
  end

  it "renders the edit organization_address_type form" do
    render

    assert_select "form[action=?][method=?]", organization_address_type_path(@organization_address_type), "post" do

      assert_select "input[name=?]", "organization_address_type[name]"

      assert_select "input[name=?]", "organization_address_type[code]"
    end
  end
end
