# Dependencies
require File.join File.dirname(__FILE__), "enhanced_select", "helpers.rb"

# Enhanced Select
module EnhancedSelect
  # Placeholder.
end

# Automatic Includes
if defined?(Rails) && defined?(ActionView)
  ActionView::Base.send :include, EnhancedSelect::ViewHelpers
  ActionView::Helpers::InstanceTag.send :extend, EnhancedSelect::InstanceTags
  ActionView::Helpers::FormHelper.send :extend, EnhancedSelect::FormBuilders
end
