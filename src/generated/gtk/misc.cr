require "./widget"

module Gtk
  class Misc < Widget
    def initialize @gtk_misc
    end

    def to_unsafe
      @gtk_misc.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def xalign=(__value)
      LibGtk.misc_set_xalign((to_unsafe as LibGtk::Misc*), Float32.cast(__value))
    end

    def xpad=(__value)
      LibGtk.misc_set_xpad((to_unsafe as LibGtk::Misc*), Int32.cast(__value))
    end

    def yalign=(__value)
      LibGtk.misc_set_yalign((to_unsafe as LibGtk::Misc*), Float32.cast(__value))
    end

    def ypad=(__value)
      LibGtk.misc_set_ypad((to_unsafe as LibGtk::Misc*), Int32.cast(__value))
    end

    def alignment(xalign, yalign)
      __return_value = LibGtk.misc_get_alignment((to_unsafe as LibGtk::Misc*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def padding(xpad, ypad)
      __return_value = LibGtk.misc_get_padding((to_unsafe as LibGtk::Misc*), Int32.cast(xpad), Int32.cast(ypad))
      __return_value
    end

    def alignment=(xalign, yalign)
      __return_value = LibGtk.misc_set_alignment((to_unsafe as LibGtk::Misc*), Float32.cast(xalign), Float32.cast(yalign))
      __return_value
    end

    def padding=(xpad, ypad)
      __return_value = LibGtk.misc_set_padding((to_unsafe as LibGtk::Misc*), Int32.cast(xpad), Int32.cast(ypad))
      __return_value
    end

  end
end

