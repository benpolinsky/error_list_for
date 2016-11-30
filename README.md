-- in development --
# ErrorListFor

Quick list of errors for displaying in one place.

Sometimes you'd like to return errors at the top of the screen in a notice rather than around a form,
for example if you have a particularly long form.

Just a quick helper method to help with said cases.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'error_list_for'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install error_list_for

## Usage

```error_list_for``` will be available in all of your controllers.
```
	error_list_for(@object_with_active_record_like_errors)
```

The returned value is a list of errors:

"Email Required and Name Must Be Greater than 2"

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/error_list_for.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

