require "bundler/setup"
require "rails"
require "action_view"
require "enhanced_select"
require "rspec-rails"

RSpec.configure do |config|
  config.before :suite do
    include ActionView::Helpers::FormOptionsHelper
  end
end
