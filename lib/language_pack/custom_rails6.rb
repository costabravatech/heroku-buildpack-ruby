require "language_pack"
require "language_pack/rails5"

class LanguagePack::CustomRails6 < LanguagePack::Rails5
  def self.use?
    instrument "custom_rails6.use" do
      rails_version = bundler.gem_version('railties')
      return true
    end
  end

end
