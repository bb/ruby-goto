ruby-goto
=========

ruby-goto, version –1.0, by Ryan Pavlik

‘goto’ for ruby. :-)

- Category: Library/Evil
- Status: squishy
- Created: 2003-06-06 05:06:14 GMT

Description
-----------

This is a simple label-based goto for ruby. Just to show that it can be done.

Also to show that even though ruby may support certain features, even features that may be terribly abusable, does not mean that everyone will, in fact, terribly abuse them. ;-)

Example
-------

```ruby
require 'goto'

frame_start

label(:a) do
  puts "a"
end

label(:b) do
  puts "b"
  goto :a if rand > 0.1
end

frame_end
```

License
-------

GPL
