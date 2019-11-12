# PPHtml

PP for HTML looking things.

It will `puts` colorized HTML using ANSI escape codes from [CodeRay](https://github.com/rubychan/coderay) and returns an html document formatted by [HtmlBeautifier](https://github.com/threedaymonk/htmlbeautifier). This allows you to easily save the output to a file.

![screenshot](https://raw.githubusercontent.com/ttilberg/pphtml/master/screenshot.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pphtml'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pphtml

## Usage

```ruby
require 'pphtml'

pphtml "<html><body><h1>Wow!</h1></body></html>"

response = HTTParty.get 'https://www.example.com'
pphtml response

doc = Nokogiri.parse(response)
pphtml doc

# The return value from pphtml is the html formatted without the ANSI escape codes:
File.write('myfile.html', pphtml doc)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ttilberg/pphtml.
