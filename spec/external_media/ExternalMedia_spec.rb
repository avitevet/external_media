require 'minitest/spec'
require 'minitest/autorun'

require 'external_media'

describe ExternalMedia do
  it "must add has_external_media method" do
    class Foo
      include ExternalMedia
    end

    Foo.methods.must_include :has_external_media
  end

  it "has_external_media adds external_media attribute" do
    class Foo
      include ExternalMedia

      has_external_media
    end

    Foo.new.methods.must_include :external_media
  end
end
