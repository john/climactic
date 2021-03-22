require "rails_helper"

RSpec.describe BoundariesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/boundaries").to route_to("boundaries#index")
    end

    it "routes to #new" do
      expect(get: "/boundaries/new").to route_to("boundaries#new")
    end

    it "routes to #show" do
      expect(get: "/boundaries/1").to route_to("boundaries#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/boundaries/1/edit").to route_to("boundaries#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/boundaries").to route_to("boundaries#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/boundaries/1").to route_to("boundaries#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/boundaries/1").to route_to("boundaries#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/boundaries/1").to route_to("boundaries#destroy", id: "1")
    end
  end
end
