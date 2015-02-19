require "./widget"

module Gtk
  class Calendar < Widget
    def initialize @gtk_calendar
    end

    def to_unsafe
      @gtk_calendar.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    def day=(__value)
      LibGtk.calendar_set_day((to_unsafe as LibGtk::Calendar*), Int32.cast(__value))
    end

    def detail_height_rows=(__value)
      LibGtk.calendar_set_detail_height_rows((to_unsafe as LibGtk::Calendar*), Int32.cast(__value))
    end

    def detail_width_chars=(__value)
      LibGtk.calendar_set_detail_width_chars((to_unsafe as LibGtk::Calendar*), Int32.cast(__value))
    end

    def month=(__value)
      LibGtk.calendar_set_month((to_unsafe as LibGtk::Calendar*), Int32.cast(__value))
    end

    def no_month_change=(__value)
      LibGtk.calendar_set_no_month_change((to_unsafe as LibGtk::Calendar*), Bool.cast(__value))
    end

    def show_day_names=(__value)
      LibGtk.calendar_set_show_day_names((to_unsafe as LibGtk::Calendar*), Bool.cast(__value))
    end

    def show_details=(__value)
      LibGtk.calendar_set_show_details((to_unsafe as LibGtk::Calendar*), Bool.cast(__value))
    end

    def show_heading=(__value)
      LibGtk.calendar_set_show_heading((to_unsafe as LibGtk::Calendar*), Bool.cast(__value))
    end

    def show_week_numbers=(__value)
      LibGtk.calendar_set_show_week_numbers((to_unsafe as LibGtk::Calendar*), Bool.cast(__value))
    end

    def year=(__value)
      LibGtk.calendar_set_year((to_unsafe as LibGtk::Calendar*), Int32.cast(__value))
    end

    def self.new_internal
      __return_value = LibGtk.calendar_new
      Gtk::Widget.new(__return_value)
    end

    def clear_marks
      __return_value = LibGtk.calendar_clear_marks((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def date(year, month, day)
      __return_value = LibGtk.calendar_get_date((to_unsafe as LibGtk::Calendar*), UInt32.cast(year), UInt32.cast(month), UInt32.cast(day))
      __return_value
    end

    def day_is_marked(day)
      __return_value = LibGtk.calendar_get_day_is_marked((to_unsafe as LibGtk::Calendar*), UInt32.cast(day))
      __return_value
    end

    def detail_height_rows
      __return_value = LibGtk.calendar_get_detail_height_rows((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def detail_width_chars
      __return_value = LibGtk.calendar_get_detail_width_chars((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def display_options
      __return_value = LibGtk.calendar_get_display_options((to_unsafe as LibGtk::Calendar*))
      __return_value
    end

    def mark_day(day)
      __return_value = LibGtk.calendar_mark_day((to_unsafe as LibGtk::Calendar*), UInt32.cast(day))
      __return_value
    end

    def select_day(day)
      __return_value = LibGtk.calendar_select_day((to_unsafe as LibGtk::Calendar*), UInt32.cast(day))
      __return_value
    end

    def select_month(month, year)
      __return_value = LibGtk.calendar_select_month((to_unsafe as LibGtk::Calendar*), UInt32.cast(month), UInt32.cast(year))
      __return_value
    end

    def detail_func=(func, data, destroy)
      __return_value = LibGtk.calendar_set_detail_func((to_unsafe as LibGtk::Calendar*), func, data, destroy)
      __return_value
    end

    def detail_height_rows=(rows)
      __return_value = LibGtk.calendar_set_detail_height_rows((to_unsafe as LibGtk::Calendar*), Int32.cast(rows))
      __return_value
    end

    def detail_width_chars=(chars)
      __return_value = LibGtk.calendar_set_detail_width_chars((to_unsafe as LibGtk::Calendar*), Int32.cast(chars))
      __return_value
    end

    def display_options=(flags)
      __return_value = LibGtk.calendar_set_display_options((to_unsafe as LibGtk::Calendar*), flags)
      __return_value
    end

    def unmark_day(day)
      __return_value = LibGtk.calendar_unmark_day((to_unsafe as LibGtk::Calendar*), UInt32.cast(day))
      __return_value
    end

  end
end

