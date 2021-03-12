require 'rails_helper'

RSpec.describe "industry_sectors/index", type: :view do
  before(:each) do
    assign(:industry_sectors, [
      IndustrySector.create!(
        code: "Code",
        name: "Name"
      ),
      IndustrySector.create!(
        code: "Code",
        name: "Name"
      )
    ])
  end

  it "renders a list of industry_sectors" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
