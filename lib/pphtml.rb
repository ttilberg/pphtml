require "pphtml/version"
require 'coderay'
require 'htmlbeautifier'
require 'prettyprint'

class PP < PrettyPrint

  # Displays nice formatted output for an HTML string, or something that can look like one
  #
  def PP.pphtml(html)
    puts CodeRay.scan(HtmlBeautifier.beautify(html.to_s), :html).terminal
  end  
end

# Include the helper into the Kernel methods, like other pp methods are.
module Kernel
  def pphtml(html)
    PP.pphtml(html)
  end
  module_function :pphtml
end
