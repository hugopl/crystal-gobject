module GLib
  class TestLogMsg
    include GObject::WrappedType

    @g_lib_test_log_msg : LibGLib::TestLogMsg*?
    def initialize(@g_lib_test_log_msg : LibGLib::TestLogMsg*)
    end

    def to_unsafe
      @g_lib_test_log_msg.not_nil!
    end

    def free
      __return_value = LibGLib.test_log_msg_free(to_unsafe.as(LibGLib::TestLogMsg*))
      __return_value
    end

  end
end

