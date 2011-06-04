require "spec_helper"

describe "Enhanced Select" do
  class MockView < ActionView::Base
  end
  
  before :each do
    @mock_view = MockView.new
    @options = [{:text => "One", :value => 1}, {:text => "Two", :value => 2}, {:text => "Three", :value => 3}]
  end
  
	it "should be testable" do
	  # Unable to test due to issues with loading the view helpers.
    # @mock_view.enhanced_options_for_select @options
	end
end
