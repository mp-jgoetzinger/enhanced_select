require "spec_helper"

describe "Enhanced Select" do
  before :each do
    @standard_options = [
      {:text => "One", :value => 1},
      {:text => "Two", :value => 2},
      {:text => "Three", :value => 3}
    ]
    @enhanced_options = [
      {:text => "One", :value => 1, "data-url" => "/tasks/1"},
      {:text => "Two", :value => 2, "data-url" => "/tasks/2"},
      {:text => "Three", :value => 3, "data-url" => "/tasks/3"}
    ]
  end

  context "Standard" do
  	it "should construct valid options" do
  	  enhanced_options_for_select(@standard_options).should == "<option value=1>One</option>\n<option value=2>Two</option>\n<option value=3>Three</option>"
    end
  end

  context "Resource" do
  	it "should construct valid options" do
  	  enhanced_options_for_select(@enhanced_options).should == "<option value=1 data-url=/tasks/1>One</option>\n<option value=2 data-url=/tasks/2>Two</option>\n<option value=3 data-url=/tasks/3>Three</option>"
    end
  end
end
