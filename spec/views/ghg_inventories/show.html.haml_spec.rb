require 'rails_helper'

RSpec.describe "ghg_inventories/show", type: :view do
  before(:each) do
    @ghg_inventory = assign(:ghg_inventory, GhgInventory.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
