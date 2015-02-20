# MotionDocs

Provides class and method documentation right in your RubyMotion REPL.

## Installation

MotionDocs will only activate if running in simulator.

```ruby
gem 'motion-docs'
```

## Usage

Within your RubyMotion REPL, type in `docs` and a string representing what you'd like
to look up in the documentation.

```sh-session
(main)> docs "UINavigationController"
```

You'll get something like this:

![UINavigationController documentation](http://clrsight.co/jh/2015-02-19-o8uh6.png?+)

To look up a method, just use the familiar notation for class and instance methods:

```sh-session
(main)> docs "UIColor.blueColor"
 ...
(main)> docs "UIColor#colorWithAlphaComponent:"
 ...
```

As an alternative, you can use `.docs` on a string:

```sh-session
(main)> "UIColor.redColor".docs
 ...
```

Or, for classes, even just on the class itself:

```sh-session
(main)> UIColor.docs
 ...
```

## License

MIT


