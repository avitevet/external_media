module ExternalMedia
  require 'external_media/engine' if defined?(Rails)

  def self.included(klass)
    klass.extend(ClassMethods)
  end


  module ClassMethods
    def has_external_media
      attr_accessor :external_media
    end
  end
end
