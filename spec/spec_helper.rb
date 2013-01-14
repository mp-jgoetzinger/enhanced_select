require "bundler/setup"
require "rails"
require "action_view"
require "enhanced_select"

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
end
