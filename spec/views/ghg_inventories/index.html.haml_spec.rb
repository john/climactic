require 'rails_helper'

RSpec.describe "ghg_inventories/index", type: :view do
  before(:each) do
    assign(:ghg_inventories, [
      GhgInventory.create!(
        name: "Name"
      ),
      GhgInventory.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of ghg_inventories" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
