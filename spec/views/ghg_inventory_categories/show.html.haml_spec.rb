require 'rails_helper'

RSpec.describe "ghg_inventory_categories/show", type: :view do
  before(:each) do
    @ghg_inventory_category = assign(:ghg_inventory_category, GhgInventoryCategory.create!(
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
