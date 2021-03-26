require "rails_helper"

RSpec.describe AddressTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/address_types").to route_to("address_types#index")
    end

    it "routes to #new" do
      expect(get: "/address_types/new").to route_to("address_types#new")
    end

    it "routes to #show" do
      expect(get: "/address_types/1").to route_to("address_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/address_types/1/edit").to route_to("address_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/address_types").to route_to("address_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/address_types/1").to route_to("address_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/address_types/1").to route_to("address_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/address_types/1").to route_to("address_types#destroy", id: "1")
    end
  end
end
