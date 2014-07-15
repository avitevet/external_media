require 'rails/generators'

module ExternalMedia
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('..', __FILE__)

    def copy_migration
      file = generate :migration, "create-external-media"
      p file
    end
  end
end