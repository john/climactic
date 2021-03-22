require 'rails_helper'

RSpec.describe "boundaries/show", type: :view do
  before(:each) do
    @boundary = assign(:organizational_boundary, OrganizationalBoundary.create!(
      name: "Name",
      organization: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
