module ExternalMedia
  def self.included(klass)
    klass.extend(ClassMethods)
  end


  module ClassMethods
    def has_external_media
      attr_accessor :external_media
    end
  end
end
