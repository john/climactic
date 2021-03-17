require 'rails_helper'

RSpec.describe "organization_address_types/index", type: :view do
  before(:each) do
    assign(:organization_address_types, [
      OrganizationAddressType.create!(
        name: "Name",
        code: "Code"
      ),
      OrganizationAddressType.create!(
        name: "Name",
        code: "Code"
      )
    ])
  end

  it "renders a list of organization_address_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
  end
end
