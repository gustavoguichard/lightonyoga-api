require "rails_helper"

RSpec.describe AsanasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/asanas").to route_to("asanas#index")
    end

    it "routes to #new" do
      expect(get: "/asanas/new").to route_to("asanas#new")
    end

    it "routes to #show" do
      expect(get: "/asanas/1").to route_to("asanas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/asanas/1/edit").to route_to("asanas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/asanas").to route_to("asanas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/asanas/1").to route_to("asanas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/asanas/1").to route_to("asanas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/asanas/1").to route_to("asanas#destroy", id: "1")
    end
  end
end
