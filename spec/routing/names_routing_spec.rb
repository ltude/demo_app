require "spec_helper"

describe NamesController do
  describe "routing" do

    it "routes to #index" do
      get("/names").should route_to("names#index")
    end

    it "routes to #new" do
      get("/names/new").should route_to("names#new")
    end

    it "routes to #show" do
      get("/names/1").should route_to("names#show", :id => "1")
    end

    it "routes to #edit" do
      get("/names/1/edit").should route_to("names#edit", :id => "1")
    end

    it "routes to #create" do
      post("/names").should route_to("names#create")
    end

    it "routes to #update" do
      put("/names/1").should route_to("names#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/names/1").should route_to("names#destroy", :id => "1")
    end

  end
end
