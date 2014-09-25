require "bugsnag_async_notifier/version"
require 'bugsnag'
require 'sucker_punch'

module BugsnagAsyncNotifier
  class DeliveryJob
    include SuckerPunch::Job
    def perform(*args)
      Bugsnag::Notification.deliver_exception_payload_without_async(*args)
    end
  end

end


Bugsnag::Notification.class_eval do
  class << self
    def deliver_exception_payload_with_async(*args)
      BugsnagAsyncNotifier::DeliveryJob.new.async.perform(*args)
    end

    alias_method :deliver_exception_payload_without_async, :deliver_exception_payload
    alias_method :deliver_exception_payload, :deliver_exception_payload_with_async
  end
end
