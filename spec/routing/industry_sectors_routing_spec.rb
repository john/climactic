require "rails_helper"

RSpec.describe IndustrySectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/industry_sectors").to route_to("industry_sectors#index")
    end

    it "routes to #new" do
      expect(get: "/industry_sectors/new").to route_to("industry_sectors#new")
    end

    it "routes to #show" do
      expect(get: "/industry_sectors/1").to route_to("industry_sectors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/industry_sectors/1/edit").to route_to("industry_sectors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/industry_sectors").to route_to("industry_sectors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/industry_sectors/1").to route_to("industry_sectors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/industry_sectors/1").to route_to("industry_sectors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/industry_sectors/1").to route_to("industry_sectors#destroy", id: "1")
    end
  end
end
