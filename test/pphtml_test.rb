require "test_helper"

class PPHtmlTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PPHtml::VERSION
  end

  def test_it_formats_html_nicely
    assert_output(PP_HTML) do
      pphtml HTML
    end
  end


  HTML = <<~HTML
    <!DOCTYPE html><html><head><title>Title 1</title></head><body><div><h1>Header 1</h1></div></body></html>
  HTML

  PP_HTML = "\e[1;34m<!DOCTYPE html>\e[0m\e[32m<html>\e[0m\e[32m<head>\e[0m\e[32m<title>\e[0mTitle 1\e[32m</title>\e[0m\e[32m</head>\e[0m\e[32m<body>\e[0m\n    \e[32m<div>\e[0m\n      \e[32m<h1>\e[0mHeader 1\e[32m</h1>\e[0m\n    \e[32m</div>\e[0m\n  \e[32m</body>\e[0m\e[32m</html>\e[0m\n"

end
