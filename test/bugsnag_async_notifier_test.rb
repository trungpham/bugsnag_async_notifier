require 'minitest/autorun'
require 'mocha/mini_test'
require 'bugsnag_async_notifier'
require 'sucker_punch/testing/inline'

class BugsnagAsyncNotifierTest < Minitest::Test

  def setup
    Celluloid.boot
  end

  def test_use_async_notifier
    payload = mock('payload')
    endpoint = mock('endpoint')
    Bugsnag::Notification.expects(:deliver_exception_payload_without_async).with(endpoint, payload)
    Bugsnag::Notification.deliver_exception_payload(endpoint, payload)
  end
end

