require 'thor/group'

module Generators
  class CookbookGenerator < Thor::Group
    include Thor::Actions
    
    argument :name

    def self.source_root
      File.expand_path("../templates", __FILE__)
    end

    def install_cookbooks
      directory "cookbook", "cookbooks/#{cookbook_name}"
    end

    protected
    def cookbook_name
      @cookbook_name ||= (name =~ /^bosh_/) ? name : "bosh_#{name}"
    end

    def simple_name
      @simple_name ||= if name =~ /^bosh_(.*)/
        $1
      else
        name
      end
    end
  end
end
