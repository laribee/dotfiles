require 'rubygems'
require 'rake'

desc "create symlinks to config files"
task :symlink do
  dir = File.dirname(__FILE__)
  force = true
  force = force ? '-Ff' : ''

  (Dir.glob('.*') - ['.git', '.', '..']).each do |file|
    `ln -s #{force} #{File.join(dir, file)} #{ENV['HOME']}/#{file}`
  end
  #symlink
end
