require 'rubygems'
require 'wirble'

Wirble.init
Wirble.colorize

alias q exit

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT] = true

IRB.conf[:IRB_RC] = proc do |conf|
  name = "irb: "
  name = "rails: " if $0 == 'irb' && ENV['RAILS_ENV'] 
  leader = " " * name.length
  conf.prompt_i = "#{name}"
  conf.prompt_s = leader + '\-" '
  conf.prompt_c = leader + '\-+ '
  conf.return_format = ('=' * (name.length - 2)) + "> %s\n"
end


def time_it(times=1)
  require "benchmark"
  ret = nil
  Benchmark.bm { |x| x.report { times.times { ret = yield } } }
  ret
end

# Why's aorta method to edit an object in YAML, awesome!
# Source: http://rubyforge.org/snippet/detail.php?type=snippet&id=22
def aorta(obj)
  tempfile = File.join('/tmp',"yobj_#{ Time.now.to_i }")
  File.open( tempfile, 'w' ) { |f| f << obj.to_yaml }
  system( "#{ ENV['EDITOR'] || 'vi' } #{ tempfile }" )
  return obj unless File.exists?( tempfile )
  content = YAML::load( File.open( tempfile ) )
  File.delete( tempfile )
  content
end

def aorta!(obj)
  obj = aorta(obj)
end

if $0 == 'irb' && ENV['RAILS_ENV'] 
  require 'logger'
  Object.const_set(:RAILS_DEFAULT_LOGGER, Logger.new(STDOUT))
end

class Object
  def my_methods(include_inherited = false)
    ignored_methods = include_inherited ? Object.methods : self.class.superclass.instance_methods
    (self.methods - ignored_methods).sort
  end
end

