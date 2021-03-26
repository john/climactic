require 'rails_helper'

RSpec.describe "address_types/show", type: :view do
  before(:each) do
    @address_type = assign(:address_type, AddressType.create!(
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
