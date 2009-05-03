# Enhanced Select
module ActionView
  module Helpers
    module FormOptionsHelper
      def enhanced_select object, method, choices, options = {}, html_options = {}
        InstanceTag.new(object, method, self, options.delete(:object)).to_enhanced_select_tag(choices, options, html_options)
      end
			
      # Accepts a hash array of options and returns a string of option tags. Each option hash is expected to be comprised of valid
			# HTML option attributes (http://www.w3schools.com/tags/tag_option.asp) where the hash key is the HTML attribute name and the hash
			# value is the attribute value. If +selected+ is specified, then the matching option will get the selected.
      #
      # Examples (call, result):
      #   enhanced_options_for_select [{:value => 1, :text => "New York"}, {:value => 2, :text => "Denver"}]
      #   <option value="1">New York</option>\n<option value="2">Denver</option>
      #
      #   enhanced_options_for_select [{:value => "bmw", :text => "BMW"}, {:value => "tesla", :text => "Tesla Motors"}], "tesla"
      #   <option value="bmw">BMW</option>\n<option value="tesla" selected="selected">Tesla Motors</option>
      #
      # NOTE: Only the option tags are returned, you have to wrap this call in a regular HTML select tag.			
      def enhanced_options_for_select options = [], selected = nil
				# Ensure option selections are unique.
				options.each {|option| option.delete :selected}
				# Generate the HTML code.
        options.map do |option|
					option[:selected] = "selected" if option[:value] == selected
					html = "<option"
					option.each_pair {|key, value| html << build_attribute(key, value)}
					html << ">#{html_escape option[:text].to_s}</option>\n"
        end.to_s
      end

			private
			
			# Convenience method for assembling attributes based on a key and value.
			def build_attribute key, value
				key == :text ? '' : " #{key.to_s}=\"#{html_escape value.to_s}\""
			end
    end
    
    class InstanceTag
      def to_enhanced_select_tag choices, options, html_options
        html_options = html_options.stringify_keys
        add_default_name_and_id(html_options)
        value = value(object)
        content_tag "select", add_options(enhanced_options_for_select(choices, value), options, value), html_options
      end
   end

    class FormBuilder
      def enhanced_select method, choices, options = {}, html_options = {}
        @template.enhanced_select @object_name, method, choices, objectify_options(options), @default_options.merge(html_options)
      end
    end
  end
end
