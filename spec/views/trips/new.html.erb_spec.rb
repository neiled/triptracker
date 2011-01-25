require 'spec_helper'

describe "trips/new.html.erb" do
  before(:each) do
    assign(:trip, stub_model(Trip).as_new_record)
  end

  it "renders new trip form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => trips_path, :method => "post" do
    end
  end
end
