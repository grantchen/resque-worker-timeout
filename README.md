### resque-worker-timeout

A Resque plugin. If you want set worker timeout, extend it with this module.

### Install

```ruby
gem 'resque-worker-timeout'
```


### Usage

```ruby
class TransferFileWorker
  extend Resque::Plugins::WorkerTimeout

  # 10 minutes (default 10 minutes)
  @timeout = 600

  # reenqueue worker if timeout happend (default false)
  @reenqueue_worker = true

  def self.perform(file_name)
    # transfer file
  end
end
```

### Contributing to resque-worker-timeout

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

### Copyright

Copyright (c) 2015 grant. See LICENSE.txt for
further details.
