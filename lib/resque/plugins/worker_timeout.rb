module Resque
  module Plugins
    module WorkerTimeout

      def timeout
        @timeout || 600
      end

      def reenqueue_worker
        @reenqueue_worker || false
      end

      def around_perform(*args)
        begin
          Timeout::timeout(timeout) do
            yield
          end
        rescue Timeout::Error => e
          if reenqueue_worker
            Resque.enqueue self, *args
          else
            raise e
          end
        end
      end
    end
  end
end
