STACK = []

class Label
  attr_accessor :name;
  attr_accessor :block;
  
  def initialize(name, block);
    @name  = name
    @block = block
  end

  def ==(sym)
    @name == sym
  end
end

class Goto < Exception;
  attr_accessor :label
  def initialize(label); @label = label; end
end

def label(sym, &block)
  STACK.last << Label.new(sym, block)
end

def frame_start
  STACK << []
end

def frame_end
  frame = STACK.pop
  idx   = 0

  begin
    for i in (idx...frame.size)
      frame[i].block.call if frame[i].block
    end
  rescue Goto => g
    idx = frame.index(g.label)
    retry
  end
end

def goto(label)
  raise Goto.new(label)
end
