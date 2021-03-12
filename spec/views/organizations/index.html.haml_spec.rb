require 'rails_helper'

RSpec.describe "organizations/index", type: :view do
  before(:each) do
    assign(:organizations, [
      Organization.create!(
        organization_type_id: 2,
        name: "Name",
        description: "MyText",
        external_identifier: "External Identifier"
      ),
      Organization.create!(
        organization_type_id: 2,
        name: "Name",
        description: "MyText",
        external_identifier: "External Identifier"
      )
    ])
  end

  it "renders a list of organizations" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "External Identifier".to_s, count: 2
  end
end
