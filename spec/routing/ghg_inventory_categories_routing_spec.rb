require "rails_helper"

RSpec.describe GhgInventoryCategoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ghg_inventory_categories").to route_to("ghg_inventory_categories#index")
    end

    it "routes to #new" do
      expect(get: "/ghg_inventory_categories/new").to route_to("ghg_inventory_categories#new")
    end

    it "routes to #show" do
      expect(get: "/ghg_inventory_categories/1").to route_to("ghg_inventory_categories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ghg_inventory_categories/1/edit").to route_to("ghg_inventory_categories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ghg_inventory_categories").to route_to("ghg_inventory_categories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ghg_inventory_categories/1").to route_to("ghg_inventory_categories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ghg_inventory_categories/1").to route_to("ghg_inventory_categories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ghg_inventory_categories/1").to route_to("ghg_inventory_categories#destroy", id: "1")
    end
  end
end
