require 'rails_helper'

RSpec.describe "organizations/new", type: :view do
  before(:each) do
    assign(:organization, Organization.new(
      organization_type_id: 1,
      name: "MyString",
      description: "MyText",
      external_identifier: "MyString"
    ))
  end

  it "renders new organization form" do
    render

    assert_select "form[action=?][method=?]", organizations_path, "post" do

      assert_select "input[name=?]", "organization[organization_type_id]"

      assert_select "input[name=?]", "organization[name]"

      assert_select "textarea[name=?]", "organization[description]"

      assert_select "input[name=?]", "organization[external_identifier]"
    end
  end
end
