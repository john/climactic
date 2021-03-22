require 'rails_helper'

RSpec.describe "boundaries/index", type: :view do
  before(:each) do
    assign(:boundaries, [
      OrganizationalBoundary.create!(
        name: "Name",
        organization: nil
      ),
      OrganizationalBoundary.create!(
        name: "Name",
        organization: nil
      )
    ])
  end

  it "renders a list of boundaries" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
