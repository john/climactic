require "rails_helper"

RSpec.describe FacilityTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/facility_types").to route_to("facility_types#index")
    end

    it "routes to #new" do
      expect(get: "/facility_types/new").to route_to("facility_types#new")
    end

    it "routes to #show" do
      expect(get: "/facility_types/1").to route_to("facility_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/facility_types/1/edit").to route_to("facility_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/facility_types").to route_to("facility_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/facility_types/1").to route_to("facility_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/facility_types/1").to route_to("facility_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/facility_types/1").to route_to("facility_types#destroy", id: "1")
    end
  end
end
