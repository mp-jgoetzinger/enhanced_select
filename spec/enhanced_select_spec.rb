require "spec_helper"

describe "Enhanced Select" do
  include ActionView::Helpers::FormOptionsHelper

  before :all do
    Item = Struct.new :id, :name
    @item = Item.new 1, "test"
  end

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

  describe ".enhanced_select" do
    it "constructs options with text and values" do
      html = enhanced_select @item, :name, @standard_options
      html.include?("<option value=1>One</option>").should be_true 
    end

    it "constructs options with text, values, and data attributes" do
      html = enhanced_select @item, :name, @enhanced_options
      html.include?("<option value=2 data-url=/tasks/2>Two</option>").should be_true
    end
  end

  describe ".enhanced_options_for_select" do
  	it "constructs options with text and values" do
  	  html = enhanced_options_for_select @standard_options
      html.include?("<option value=1>One</option>").should be_true
    end

  	it "construct options with text, values, and data attributes" do
  	  html = enhanced_options_for_select @enhanced_options
      html.include?("<option value=3 data-url=/tasks/3>Three</option>").should be_true
    end
  end
end
