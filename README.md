# DebugPrint

Ever placed `puts`, `pp` or `ap` for debugging purposes in the code and then forgot where the prints come from? Use `dp` (or `debug_print`) instead! `dp` simply prints header line with information about caller.

## Installation

Add this line to your application's Gemfile:

    gem 'debug_print_ext', require: 'debug_print'

And then execute:

    $ bundle

## Usage

Use `dp some_object` in your code to print debug information. The output looks like:
 
```
[DEBUG: from /Users/myname/projects/test/app/controllers/themes_controller.rb:13:in `suggestions']
{
    :a => "aaa",
    :b => "bbbb"
}
```

`dp` automatically uses `awesome_print`, `pretty_print` or `p` for printing (in quoted order) if available.

You can also specify printer in your code:
 
```ruby
# set printing method globally
DebugPrint.printer = :ap    # use awesome print for printing 
DebugPrint.printer = :pp    # use pretty print for printing
DebugPrint.printer = :p     # use standard p method for printing
DebugPrint.printer = :puts  # use standard puts method for printing

# set printing method ad-hoc
dp object_to_print, printer: :ap
```

You can also silent all calls to `dp` by `DebugPrint.silent = true`

## Contributing

1. Fork it ( https://github.com/[my-github-username]/debug_print/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
