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
    puts "TODO: copy yarn/npm cache directory"
    super
  end
end
