require 'rails_helper'

RSpec.describe "organization_address_types/show", type: :view do
  before(:each) do
    @organization_address_type = assign(:organization_address_type, OrganizationAddressType.create!(
      name: "Name",
      code: "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Code/)
  end
end
