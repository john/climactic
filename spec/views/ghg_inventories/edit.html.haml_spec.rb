require 'rails_helper'

RSpec.describe "ghg_inventories/edit", type: :view do
  before(:each) do
    @ghg_inventory = assign(:ghg_inventory, GhgInventory.create!(
      name: "MyString"
    ))
  end

  it "renders the edit ghg_inventory form" do
    render

    assert_select "form[action=?][method=?]", ghg_inventory_path(@ghg_inventory), "post" do

      assert_select "input[name=?]", "ghg_inventory[name]"
    end
  end
end
