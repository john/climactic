require 'rails_helper'

RSpec.describe "facility_types/edit", type: :view do
  before(:each) do
    @facility_type = assign(:facility_type, FacilityType.create!(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders the edit facility_type form" do
    render

    assert_select "form[action=?][method=?]", facility_type_path(@facility_type), "post" do

      assert_select "input[name=?]", "facility_type[code]"

      assert_select "input[name=?]", "facility_type[name]"
    end
  end
end
