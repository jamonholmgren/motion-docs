# MotionDocs

[![Build Status](https://travis-ci.org/jamonholmgren/motion-docs.svg?branch=master)](https://travis-ci.org/jamonholmgren/motion-docs)

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

![UINavigationController documentation](http://clrsight.co/jh/2015-02-20-uzah0.png?+)

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

If you give it a class or instance method name, it'll give you documentation for that.

```sh-session
(main)> UIView.docs("#frame")
 ...
(main)> NSObject.docs(".alloc")
 ...
```

![addsubview](http://clrsight.co/jh/2015-02-20-kyrmu.png?+)

## Support

File an issue here at Github. Better yet, submit a pull request with a fix. :-)
But an issue is just fine as well.

## Author

[Jamon Holmgren](https://twitter.com/jamonholmgren)

## License

Copyright (c) 2015 Jamon Holmgren

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.



