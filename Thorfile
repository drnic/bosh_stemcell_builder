require 'bundler'

$:.unshift(File.expand_path("../lib", __FILE__))

class Default < Thor
  desc "cookbook NAME", "Create a cookbook"
  def cookbook(name)
    require 'generators/cookbook_generator'
    Generators::CookbookGenerator.start([name])
  end

  desc "import PATH", "Import an original bosh stemcell_builder stage into a cookbook"
  def import_stage(path)
    path = File.expand_path(path)
    name = File.basename(path)
    cookbook(name)
    if Dir[File.join(path, "assets/*")].first
      require 'generators/copy_all_the_assets_generator'
      Generators::CopyAllTheAssetsGenerator.start([name, path])
    end
  end
end