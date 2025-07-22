## ActiveModelAttributes

`Tapioca::Dsl::Compilers::ActiveModelAttributes` decorates RBI files for all
classes that use [`ActiveModel::Attributes`](https://edgeapi.rubyonrails.org/classes/ActiveModel/Attributes/ClassMethods.html).

For example, with the following class:

~~~rb
class Shop
  include ActiveModel::Attributes

  attribute :name, :string
end
~~~

this compiler will produce an RBI file with the following content:
~~~rbi
# typed: true

class Shop
  include GeneratedAttributeMethods

  module GeneratedAttributeMethods
    sig { returns(T.nilable(::String)) }
    def name; end

    sig { params(name: T.nilable(::String)).returns(T.nilable(::String)) }
    def name=(name); end
  end

end
~~~
: [ConstantType = (Class[::ActiveModel::Attributes] & ::ActiveModel::Attributes::ClassMethods)]
