require 'spec_helper'

describe "trips/index.html.erb" do
  before(:each) do
    assign(:trips, [
      stub_model(Trip),
      stub_model(Trip)
    ])
  end

  it "renders a list of trips" do
    render
  end
end
