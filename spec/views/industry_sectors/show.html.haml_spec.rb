require 'rails_helper'

RSpec.describe "industry_sectors/show", type: :view do
  before(:each) do
    @industry_sector = assign(:industry_sector, IndustrySector.create!(
      code: "Code",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
  end
end
