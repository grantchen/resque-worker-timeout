Gem::Specification.new do |s|
  s.name              = "resque-worker-timeout"
  s.version           = "0.0.2"
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "A Resque plugin for set worker timeout."
  s.homepage          = "https://github.com/grantchen/resque-worker-timeout"
  s.email             = "grantcss1982@gmail.com"
  s.authors           = [ "Grant Chen" ]
  s.has_rdoc          = false

  s.files             = %w( README.rdoc Rakefile LICENSE.txt )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")

  s.description       = <<desc
A Resque plugin. If you want set worker timeout, extend it with this module.
For example:
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
desc
end
