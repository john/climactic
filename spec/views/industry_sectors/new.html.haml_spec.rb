require 'rails_helper'

RSpec.describe "industry_sectors/new", type: :view do
  before(:each) do
    assign(:industry_sector, IndustrySector.new(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders new industry_sector form" do
    render

    assert_select "form[action=?][method=?]", industry_sectors_path, "post" do

      assert_select "input[name=?]", "industry_sector[code]"

      assert_select "input[name=?]", "industry_sector[name]"
    end
  end
end
