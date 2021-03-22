require 'rails_helper'

RSpec.describe "boundaries/new", type: :view do
  before(:each) do
    assign(:organizational_boundary, OrganizationalBoundary.new(
      name: "MyString",
      organization: nil
    ))
  end

  it "renders new organizational_boundary form" do
    render

    assert_select "form[action=?][method=?]", boundaries_path, "post" do

      assert_select "input[name=?]", "organizational_boundary[name]"

      assert_select "input[name=?]", "organizational_boundary[organization_id]"
    end
  end
end
