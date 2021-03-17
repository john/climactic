require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        contact_id: 2,
        address_line_1: "Address Line 1",
        address_line_2: "Address Line 2",
        postal_code: "Postal Code"
      ),
      Address.create!(
        contact_id: 2,
        address_line_1: "Address Line 1",
        address_line_2: "Address Line 2",
        postal_code: "Postal Code"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Address Line 1".to_s, count: 2
    assert_select "tr>td", text: "Address Line 2".to_s, count: 2
    assert_select "tr>td", text: "Postal Code".to_s, count: 2
  end
end
