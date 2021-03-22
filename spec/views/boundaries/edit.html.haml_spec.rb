require 'rails_helper'

RSpec.describe "boundaries/edit", type: :view do
  before(:each) do
    @boundary = assign(:organizational_boundary, OrganizationalBoundary.create!(
      name: "MyString",
      organization: nil
    ))
  end

  it "renders the edit organizational_boundary form" do
    render

    assert_select "form[action=?][method=?]", organizational_boundary_path(@boundary), "post" do

      assert_select "input[name=?]", "organizational_boundary[name]"

      assert_select "input[name=?]", "organizational_boundary[organization_id]"
    end
  end
end
