require 'rails_helper'

RSpec.describe "ghg_inventory_categories/index", type: :view do
  before(:each) do
    assign(:ghg_inventory_categories, [
      GhgInventoryCategory.create!(
        name: "Name",
        code: "Code"
      ),
      GhgInventoryCategory.create!(
        name: "Name",
        code: "Code"
      )
    ])
  end

  it "renders a list of ghg_inventory_categories" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Code".to_s, count: 2
  end
end
