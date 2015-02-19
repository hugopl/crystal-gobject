require "./button"

module Gtk
  class ScaleButton < Button
    def initialize @gtk_scale_button
    end

    def to_unsafe
      @gtk_scale_button.not_nil!
    end

    # Implements ImplementorIface
    # Implements Actionable
    # Implements Activatable
    # Implements Buildable
    # Implements Orientable
    def adjustment=(__value)
      LibGtk.scale_button_set_adjustment((to_unsafe as LibGtk::ScaleButton*), __value)
    end

    def icons=(__value)
      LibGtk.scale_button_set_icons((to_unsafe as LibGtk::ScaleButton*), __value)
    end

    def size=(__value)
      LibGtk.scale_button_set_size((to_unsafe as LibGtk::ScaleButton*), __value)
    end

    def value=(__value)
      LibGtk.scale_button_set_value((to_unsafe as LibGtk::ScaleButton*), Float64.cast(__value))
    end

    def self.new_internal(size, min, max, step, icons)
      __return_value = LibGtk.scale_button_new(Int32.cast(size), Float64.cast(min), Float64.cast(max), Float64.cast(step), icons)
      Gtk::Widget.new(__return_value)
    end

    def adjustment
      __return_value = LibGtk.scale_button_get_adjustment((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Adjustment.new(__return_value)
    end

    def minus_button
      __return_value = LibGtk.scale_button_get_minus_button((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Widget.new(__return_value)
    end

    def plus_button
      __return_value = LibGtk.scale_button_get_plus_button((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Widget.new(__return_value)
    end

    def popup
      __return_value = LibGtk.scale_button_get_popup((to_unsafe as LibGtk::ScaleButton*))
      Gtk::Widget.new(__return_value)
    end

    def value
      __return_value = LibGtk.scale_button_get_value((to_unsafe as LibGtk::ScaleButton*))
      __return_value
    end

    def adjustment=(adjustment)
      __return_value = LibGtk.scale_button_set_adjustment((to_unsafe as LibGtk::ScaleButton*), (adjustment.to_unsafe as LibGtk::Adjustment*))
      __return_value
    end

    def icons=(icons)
      __return_value = LibGtk.scale_button_set_icons((to_unsafe as LibGtk::ScaleButton*), icons)
      __return_value
    end

    def value=(value)
      __return_value = LibGtk.scale_button_set_value((to_unsafe as LibGtk::ScaleButton*), Float64.cast(value))
      __return_value
    end

  end
end

