require "pphtml/version"
require 'coderay'
require 'htmlbeautifier'
require 'prettyprint'

class PP < PrettyPrint

  # Displays nice formatted output for an HTML string, or something that can look like one
  #
  def PP.pphtml(html)
    pretty_html = HtmlBeautifier.beautify(html.to_s)
    puts CodeRay.scan(pretty_html, :html).terminal
    pretty_html
  end  
end

# Include the helper into the Kernel methods, like other pp methods are.
module Kernel
  def pphtml(html)
    PP.pphtml(html)
  end
  module_function :pphtml
end
