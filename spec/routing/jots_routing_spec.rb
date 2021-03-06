require "rails_helper"

RSpec.describe JotsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jots").to route_to("jots#index")
    end


    it "routes to #show" do
      expect(:get => "/jots/1").to route_to("jots#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/jots").to route_to("jots#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jots/1").to route_to("jots#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jots/1").to route_to("jots#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jots/1").to route_to("jots#destroy", :id => "1")
    end

  end
end
