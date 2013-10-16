# clean_assert

A Ruby library to get really clean asserts.

## Usage

Example:

    assert / "name != nil" / "not name.empty?" / "age >= 21"

This will do three separate assertion checks and will give you an error message that includes
the broken assertion code, the class and the method name. No need for having both the actual assertion and
then a strained error message that you normally have to write to understand what broke. Also, due to it's terseness,
you can afford having several guard clauses on one line instead of letting them take over your method, which keeps
the signal-to-noise ratio sane.

## Installation

Add this line to your application's Gemfile:

    gem 'clean_assert'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clean_assert

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


