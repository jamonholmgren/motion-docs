# encoding: utf-8

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

lib_dir_path = File.dirname(File.expand_path(__FILE__))
Motion::Project::App.setup do |app|
  app.files << "#{lib_dir_path}/motion-docs/version.rb"
  app.files << "#{lib_dir_path}/motion-docs/motion-docs.rb"
  app.files << "#{lib_dir_path}/motion-docs/monkeypatching.rb"
end
