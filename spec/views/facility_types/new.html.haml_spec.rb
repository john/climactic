require 'rails_helper'

RSpec.describe "facility_types/new", type: :view do
  before(:each) do
    assign(:facility_type, FacilityType.new(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders new facility_type form" do
    render

    assert_select "form[action=?][method=?]", facility_types_path, "post" do

      assert_select "input[name=?]", "facility_type[code]"

      assert_select "input[name=?]", "facility_type[name]"
    end
  end
end
