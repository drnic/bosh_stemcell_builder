require 'bundler'

$:.unshift(File.expand_path("../lib", __FILE__))

class Default < Thor
  desc "cookbook NAME", "Create a cookbook"
  def cookbook(name)
    require 'generators/cookbook_generator'
    Generators::CookbookGenerator.start([name])
  end
end