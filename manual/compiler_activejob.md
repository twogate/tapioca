## ActiveJob

`Tapioca::Dsl::Compilers::ActiveJob` generates RBI files for subclasses of
[`ActiveJob::Base`](https://api.rubyonrails.org/classes/ActiveJob/Base.html).

For example, with the following `ActiveJob` subclass:

~~~rb
class NotifyUserJob < ActiveJob::Base
  sig { params(user: User).returns(Mail) }
  def perform(user)
    # ...
  end
end
~~~

this compiler will produce the RBI file `notify_user_job.rbi` with the following content:

~~~rbi
# notify_user_job.rbi
# typed: true
class NotifyUserJob
  sig do
    params(
      user: User,
      block: T.nilable(T.proc.params(job: NotifyUserJob).void),
    ).returns(T.any(NotifyUserJob, FalseClass))
  end
  def self.perform_later(user, &block); end

  sig { params(user: User).returns(Mail) }
  def self.perform_now(user); end
end
~~~
