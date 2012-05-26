require "spec_helper"

describe "Enhanced Select" do
  include ActionView::Helpers::FormOptionsHelper

  before :each do
    @standard_options = [
      {text: "One", value: 1},
      {text: "Two", value: 2},
      {text: "Three", value: 3}
    ]
    @enhanced_options = [
      {text: "One", value: 1, "data-url" => "/tasks/1"},
      {text: "Two", value: 2, "data-url" => "/tasks/2"},
      {text: "Three", value: 3, "data-url" => "/tasks/3"}
    ]
  end

  describe ".enhanced_options_for_select" do
  	it "constructs options with text and values" do
  	  enhanced_options_for_select(@standard_options).should == "<option value=1>One</option>\n<option value=2>Two</option>\n<option value=3>Three</option>"
    end

  	it "construct options with text, values, and data* attributes" do
  	  enhanced_options_for_select(@enhanced_options).should == "<option value=1 data-url=/tasks/1>One</option>\n<option value=2 data-url=/tasks/2>Two</option>\n<option value=3 data-url=/tasks/3>Three</option>"
    end
  end
end
