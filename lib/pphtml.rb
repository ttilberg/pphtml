require "pphtml/version"
require 'coderay'
require 'htmlbeautifier'
require 'prettyprint'

class PP < PrettyPrint

  # Displays nice formatted output for an HTML string.
  # If passed an object that responds to .body? such as a response from several HTTP clients, it will automatically call that.
  #
  def PP.pphtml(html)
    html = html.body if html.respond_to? :body
    puts CodeRay.scan(HtmlBeautifier.beautify(html), :html).terminal
  end  
end

# Include the helper into the Kernel methods, like other pp methods are.
module Kernel
  def pphtml(html)
    PP.pphtml(html)
  end
  module_function :pphtml
end
