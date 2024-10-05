# RailsErbCredentials

A drop in replacements for Rails credentials to support good old ERB.

Ever tried to upgrade your Rails 7.1 app to Rails 7.2 and found out that you have to update all your credentials files? Maybe you used ERB in your secrets and manage actual secrets with vault?

This gem allows you to use ERB in your credentials files. Now you have best of both worlds! It is backward compatible with the existing Rails credentials and you can still have encrypted credentials files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "rails_erb_credentials"
```

then

```bash
bundle install
```

or

```bash
gem install rails_erb_credentials
```

Thats it, now if you have any ERB in your credentials files, it will be evaluated with the environment variables with the same name.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Nuzair46/rails_erb_credentials. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rails_erb_credentials/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsErbCredentials project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Nuzair46/rails_erb_credentials/blob/main/CODE_OF_CONDUCT.md).
