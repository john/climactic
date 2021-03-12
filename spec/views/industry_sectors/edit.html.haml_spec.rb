require 'rails_helper'

RSpec.describe "industry_sectors/edit", type: :view do
  before(:each) do
    @industry_sector = assign(:industry_sector, IndustrySector.create!(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders the edit industry_sector form" do
    render

    assert_select "form[action=?][method=?]", industry_sector_path(@industry_sector), "post" do

      assert_select "input[name=?]", "industry_sector[code]"

      assert_select "input[name=?]", "industry_sector[name]"
    end
  end
end
