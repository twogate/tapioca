## SidekiqWorker

`Tapioca::Dsl::Compilers::SidekiqWorker` generates RBI files classes that include
[`Sidekiq::Worker`](https://github.com/mperham/sidekiq/wiki/Getting-Started).

For example, with the following class that includes `Sidekiq::Worker`:

~~~rb
class NotifierWorker
  include Sidekiq::Worker
  def perform(customer_id)
    # ...
  end
end
~~~

this compiler will produce the RBI file `notifier_worker.rbi` with the following content:

~~~rbi
# notifier_worker.rbi
# typed: true
class NotifierWorker
  sig { params(customer_id: T.untyped).returns(String) }
  def self.perform_async(customer_id); end

  sig { params(interval: T.any(DateTime, Time), customer_id: T.untyped).returns(String) }
  def self.perform_at(interval, customer_id); end

  sig { params(interval: Numeric, customer_id: T.untyped).returns(String) }
  def self.perform_in(interval, customer_id); end
end
~~~

If your project uses `ActiveSupport` as well, then the compiler will automatically add its classes
as accepted values for the `interval` parameter:
* `self.perform_at` will also accept a `ActiveSupport::TimeWithZone` value
* `self.perform_in` will also accept a `ActiveSupport::Duration` value
: [ConstantType = singleton(::Sidekiq::Worker)]
