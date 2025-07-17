## SmartProperties

`Tapioca::Dsl::Compilers::SmartProperties` generates RBI files for classes that include
[`SmartProperties`](https://github.com/t6d/smart_properties).

For example, with the following class that includes `SmartProperties`:

~~~rb
# post.rb
class Post
  include(SmartProperties)

  property :title, accepts: String
  property! :description, accepts: String
  property :published, accepts: [true, false], reader: :published?
  property :enabled, accepts: [true, false], default: false
end
~~~

this compiler will produce the RBI file `post.rbi` with the following content:

~~~rbi
# post.rbi
# typed: true
class Post
  include SmartPropertiesGeneratedMethods

  module SmartPropertiesGeneratedMethods
    sig { returns(T.nilable(::String)) }
    def title; end

    sig { params(title: T.nilable(::String)).returns(T.nilable(::String)) }
    def title=(title); end

    sig { returns(::String) }
    def description; end

    sig { params(description: ::String).returns(::String) }
    def description=(description); end

    sig { returns(T.nilable(T::Boolean)) }
    def published?; end

    sig { params(published: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def published=(published); end

    sig { returns(T.nilable(T::Boolean)) }
    def enabled; end

    sig { params(enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
    def enabled=(enabled); end
  end
end
~~~
: [ConstantType = singleton(::SmartProperties)]
