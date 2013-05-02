require 'thor/group'

module Generators
  class CopyAllTheAssetsGenerator < Thor::Group
    include Thor::Actions
    
    argument :name
    argument :source_stage_path

    def check_source_stage_path_is_valid
      unless File.exist?(source_stage_path)
        raise Thor::Error.new("source_stage_path does not exist")
      end
    end

    def using_source_path_for_templates
      source_paths << File.join(source_stage_path)
    end

    def copy_all_the_asset_things
      directory "assets", "cookbooks/#{cookbook_name}/files/default"
    end

    protected
    def cookbook_name
      @cookbook_name ||= (name =~ /^bosh_/) ? name : "bosh_#{name}"
    end

  end
end
