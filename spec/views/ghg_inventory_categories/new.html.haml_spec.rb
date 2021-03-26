require 'rails_helper'

RSpec.describe "ghg_inventory_categories/new", type: :view do
  before(:each) do
    assign(:ghg_inventory_category, GhgInventoryCategory.new(
      name: "MyString",
      code: "MyString"
    ))
  end

  it "renders new ghg_inventory_category form" do
    render

    assert_select "form[action=?][method=?]", ghg_inventory_categories_path, "post" do

      assert_select "input[name=?]", "ghg_inventory_category[name]"

      assert_select "input[name=?]", "ghg_inventory_category[code]"
    end
  end
end
