require "language_pack"
require "language_pack/rails5"

class LanguagePack::CustomRails6 < LanguagePack::Rails5
  def self.use?
    instrument "custom_rails6.use" do
      rails_version = bundler.gem_version('railties')
      return true
    end
  end

  def run_assets_precompile_rake_task
    puts "run_assets_precompile_rake_task invoked"
    @cache.load yarn_cache_folder
    super
    @cache.store yarn_cache_folder
  end

  def yarn_cache_folder
    "node_modules"
  end
end
