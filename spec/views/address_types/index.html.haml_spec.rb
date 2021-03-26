require 'rails_helper'

RSpec.describe "address_types/index", type: :view do
  before(:each) do
    assign(:address_types, [
      AddressType.create!(
        name: "Name",
        code: "Code"
      ),
      AddressType.create!(
        name: "Name",
        code: "Code"
      )
    ])
  end

  it "renders a list of address_types" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
  end
end
