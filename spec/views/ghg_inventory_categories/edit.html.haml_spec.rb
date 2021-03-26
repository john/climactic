require 'rails_helper'

RSpec.describe "ghg_inventory_categories/edit", type: :view do
  before(:each) do
    @ghg_inventory_category = assign(:ghg_inventory_category, GhgInventoryCategory.create!(
      name: "MyString",
      code: "MyString"
    ))
  end

  it "renders the edit ghg_inventory_category form" do
    render

    assert_select "form[action=?][method=?]", ghg_inventory_category_path(@ghg_inventory_category), "post" do

      assert_select "input[name=?]", "ghg_inventory_category[name]"

      assert_select "input[name=?]", "ghg_inventory_category[code]"
    end
  end
end
