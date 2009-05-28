require 'goto'


def test
  frame_start

  label(:start) { goto :b }
  label(:a) { print "world!\n"; goto :c }
  label(:b) { print "hello "; goto :a }

  label(:c)

  frame_end
end


frame_start

label(:a) { test }
label(:b) { goto :a }

frame_end
