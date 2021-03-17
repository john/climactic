require "rails_helper"

RSpec.describe OrganizationAddressTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/organization_address_types").to route_to("organization_address_types#index")
    end

    it "routes to #new" do
      expect(get: "/organization_address_types/new").to route_to("organization_address_types#new")
    end

    it "routes to #show" do
      expect(get: "/organization_address_types/1").to route_to("organization_address_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/organization_address_types/1/edit").to route_to("organization_address_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/organization_address_types").to route_to("organization_address_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/organization_address_types/1").to route_to("organization_address_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/organization_address_types/1").to route_to("organization_address_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/organization_address_types/1").to route_to("organization_address_types#destroy", id: "1")
    end
  end
end
