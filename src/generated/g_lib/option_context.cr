module GLib
  class OptionContext
    include GObject::WrappedType
    def initialize @g_lib_option_context
    end

    def to_unsafe
      @g_lib_option_context.not_nil!
    end

    def add_group(group)
      __return_value = LibGLib.option_context_add_group((to_unsafe as LibGLib::OptionContext*), (group.to_unsafe as LibGLib::OptionGroup*))
      __return_value
    end

    def add_main_entries(entries, translation_domain)
      __return_value = LibGLib.option_context_add_main_entries((to_unsafe as LibGLib::OptionContext*), (entries.to_unsafe as LibGLib::OptionEntry*), translation_domain)
      __return_value
    end

    def free
      __return_value = LibGLib.option_context_free((to_unsafe as LibGLib::OptionContext*))
      __return_value
    end

    def description
      __return_value = LibGLib.option_context_get_description((to_unsafe as LibGLib::OptionContext*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def help(main_help, group)
      __return_value = LibGLib.option_context_get_help((to_unsafe as LibGLib::OptionContext*), Bool.cast(main_help), (group.to_unsafe as LibGLib::OptionGroup*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def help_enabled
      __return_value = LibGLib.option_context_get_help_enabled((to_unsafe as LibGLib::OptionContext*))
      __return_value
    end

    def ignore_unknown_options
      __return_value = LibGLib.option_context_get_ignore_unknown_options((to_unsafe as LibGLib::OptionContext*))
      __return_value
    end

    def summary
      __return_value = LibGLib.option_context_get_summary((to_unsafe as LibGLib::OptionContext*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def parse(argc, argv)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.option_context_parse((to_unsafe as LibGLib::OptionContext*), Int32.cast(argc), argv, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def parse_strv(arguments)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.option_context_parse_strv((to_unsafe as LibGLib::OptionContext*), arguments, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def description=(description)
      __return_value = LibGLib.option_context_set_description((to_unsafe as LibGLib::OptionContext*), description)
      __return_value
    end

    def help_enabled=(help_enabled)
      __return_value = LibGLib.option_context_set_help_enabled((to_unsafe as LibGLib::OptionContext*), Bool.cast(help_enabled))
      __return_value
    end

    def ignore_unknown_options=(ignore_unknown)
      __return_value = LibGLib.option_context_set_ignore_unknown_options((to_unsafe as LibGLib::OptionContext*), Bool.cast(ignore_unknown))
      __return_value
    end

    def main_group=(group)
      __return_value = LibGLib.option_context_set_main_group((to_unsafe as LibGLib::OptionContext*), (group.to_unsafe as LibGLib::OptionGroup*))
      __return_value
    end

    def summary=(summary)
      __return_value = LibGLib.option_context_set_summary((to_unsafe as LibGLib::OptionContext*), summary)
      __return_value
    end

    def translate_func=(func, data, destroy_notify)
      __return_value = LibGLib.option_context_set_translate_func((to_unsafe as LibGLib::OptionContext*), func, data, destroy_notify)
      __return_value
    end

    def translation_domain=(domain)
      __return_value = LibGLib.option_context_set_translation_domain((to_unsafe as LibGLib::OptionContext*), domain)
      __return_value
    end

  end
end

