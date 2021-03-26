 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/ghg_inventory_categories", type: :request do
  
  # GhgInventoryCategory. As you add validations to GhgInventoryCategory, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      GhgInventoryCategory.create! valid_attributes
      get ghg_inventory_categories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
      get ghg_inventory_category_url(ghg_inventory_category)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_ghg_inventory_category_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
      get edit_ghg_inventory_category_url(ghg_inventory_category)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new GhgInventoryCategory" do
        expect {
          post ghg_inventory_categories_url, params: { ghg_inventory_category: valid_attributes }
        }.to change(GhgInventoryCategory, :count).by(1)
      end

      it "redirects to the created ghg_inventory_category" do
        post ghg_inventory_categories_url, params: { ghg_inventory_category: valid_attributes }
        expect(response).to redirect_to(ghg_inventory_category_url(GhgInventoryCategory.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new GhgInventoryCategory" do
        expect {
          post ghg_inventory_categories_url, params: { ghg_inventory_category: invalid_attributes }
        }.to change(GhgInventoryCategory, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post ghg_inventory_categories_url, params: { ghg_inventory_category: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested ghg_inventory_category" do
        ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
        patch ghg_inventory_category_url(ghg_inventory_category), params: { ghg_inventory_category: new_attributes }
        ghg_inventory_category.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the ghg_inventory_category" do
        ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
        patch ghg_inventory_category_url(ghg_inventory_category), params: { ghg_inventory_category: new_attributes }
        ghg_inventory_category.reload
        expect(response).to redirect_to(ghg_inventory_category_url(ghg_inventory_category))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
        patch ghg_inventory_category_url(ghg_inventory_category), params: { ghg_inventory_category: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested ghg_inventory_category" do
      ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
      expect {
        delete ghg_inventory_category_url(ghg_inventory_category)
      }.to change(GhgInventoryCategory, :count).by(-1)
    end

    it "redirects to the ghg_inventory_categories list" do
      ghg_inventory_category = GhgInventoryCategory.create! valid_attributes
      delete ghg_inventory_category_url(ghg_inventory_category)
      expect(response).to redirect_to(ghg_inventory_categories_url)
    end
  end
end
