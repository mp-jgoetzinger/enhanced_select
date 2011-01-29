# Dependencies
require File.join File.dirname(__FILE__), "enhanced_select", "helpers.rb"

module EnhancedSelect
  # Placeholder.
end

# Enhance ActionView
ActionView::Base.send(:include, EnhancedSelect::ViewHelpers) if defined? ActionView
