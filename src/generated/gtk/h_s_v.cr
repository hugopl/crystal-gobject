require "./widget"

module Gtk
  class HSV < Widget
    def initialize @gtk_h_s_v
    end

    def to_unsafe
      @gtk_h_s_v.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new_internal
      __return_value = LibGtk.h_s_v_new
      Gtk::Widget.new(__return_value)
    end

    def self.to_rgb(h, s, v, r, g, b)
      __return_value = LibGtk.h_s_v_to_rgb(Float64.cast(h), Float64.cast(s), Float64.cast(v), Float64.cast(r), Float64.cast(g), Float64.cast(b))
      __return_value
    end

    def color(h, s, v)
      __return_value = LibGtk.h_s_v_get_color((to_unsafe as LibGtk::HSV*), Float64.cast(h), Float64.cast(s), Float64.cast(v))
      __return_value
    end

    def metrics(size, ring_width)
      __return_value = LibGtk.h_s_v_get_metrics((to_unsafe as LibGtk::HSV*), Int32.cast(size), Int32.cast(ring_width))
      __return_value
    end

    def is_adjusting
      __return_value = LibGtk.h_s_v_is_adjusting((to_unsafe as LibGtk::HSV*))
      __return_value
    end

    def color=(h, s, v)
      __return_value = LibGtk.h_s_v_set_color((to_unsafe as LibGtk::HSV*), Float64.cast(h), Float64.cast(s), Float64.cast(v))
      __return_value
    end

    def metrics=(size, ring_width)
      __return_value = LibGtk.h_s_v_set_metrics((to_unsafe as LibGtk::HSV*), Int32.cast(size), Int32.cast(ring_width))
      __return_value
    end

  end
end

