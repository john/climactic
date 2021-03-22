require "rails_helper"

RSpec.describe GhgInventoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ghg_inventories").to route_to("ghg_inventories#index")
    end

    it "routes to #new" do
      expect(get: "/ghg_inventories/new").to route_to("ghg_inventories#new")
    end

    it "routes to #show" do
      expect(get: "/ghg_inventories/1").to route_to("ghg_inventories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ghg_inventories/1/edit").to route_to("ghg_inventories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ghg_inventories").to route_to("ghg_inventories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ghg_inventories/1").to route_to("ghg_inventories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ghg_inventories/1").to route_to("ghg_inventories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ghg_inventories/1").to route_to("ghg_inventories#destroy", id: "1")
    end
  end
end
