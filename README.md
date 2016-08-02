# PathTranslator

This gem will allow one to specify one or more root directories and then
translate paths relative to them. Also will provide utility functionality
such as checking that the final path actually winds up under the root, 
creating directories relative to the root, etc. These are things I find
myself doing quite a bit with the various Medusa applications, so it
seems useful to extract into a single gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'path_translator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install path_translator

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/path_translator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

