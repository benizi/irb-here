require "irb-here/version"
require 'irb'

#
# Extend IRB with a ##start_with_binding method
#
module IRB
  def IRB.start_with_binding(binding)
    IRB.setup(__FILE__)
    irb = Irb.new(WorkSpace.new(binding))
    @CONF[:MAIN_CONTEXT] = irb.context
    irb.eval_input
  end
end

#
# Extend Binding with an #irb method
#
class Binding
  def irb
    IRB.start_with_binding(self)
  end
end

#
# Extend Kernel with a #breakpoint method
#
module Kernel
  def breakpoint(binding = nil)
    IRB.start_with_binding(binding)
  end
end
