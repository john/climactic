require 'rails_helper'

RSpec.describe "ghg_inventories/new", type: :view do
  before(:each) do
    assign(:ghg_inventory, GhgInventory.new(
      name: "MyString"
    ))
  end

  it "renders new ghg_inventory form" do
    render

    assert_select "form[action=?][method=?]", ghg_inventories_path, "post" do

      assert_select "input[name=?]", "ghg_inventory[name]"
    end
  end
end
