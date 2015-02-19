module Gtk
  class Action < GObject::Object
    def initialize @gtk_action
    end

    def to_unsafe
      @gtk_action.not_nil!
    end

    # Implements Buildable
    def action_group=(__value)
      LibGtk.action_set_action_group((to_unsafe as LibGtk::Action*), __value)
    end


    def gicon=(__value)
      LibGtk.action_set_gicon((to_unsafe as LibGtk::Action*), __value)
    end

    def hide_if_empty=(__value)
      LibGtk.action_set_hide_if_empty((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def icon_name=(__value)
      LibGtk.action_set_icon_name((to_unsafe as LibGtk::Action*), __value)
    end

    def is_important=(__value)
      LibGtk.action_set_is_important((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def label=(__value)
      LibGtk.action_set_label((to_unsafe as LibGtk::Action*), __value)
    end


    def sensitive=(__value)
      LibGtk.action_set_sensitive((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def short_label=(__value)
      LibGtk.action_set_short_label((to_unsafe as LibGtk::Action*), __value)
    end

    def stock_id=(__value)
      LibGtk.action_set_stock_id((to_unsafe as LibGtk::Action*), __value)
    end

    def tooltip=(__value)
      LibGtk.action_set_tooltip((to_unsafe as LibGtk::Action*), __value)
    end

    def visible=(__value)
      LibGtk.action_set_visible((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def visible_horizontal=(__value)
      LibGtk.action_set_visible_horizontal((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def visible_overflown=(__value)
      LibGtk.action_set_visible_overflown((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def visible_vertical=(__value)
      LibGtk.action_set_visible_vertical((to_unsafe as LibGtk::Action*), Bool.cast(__value))
    end

    def self.new_internal(name, label, tooltip, stock_id)
      __return_value = LibGtk.action_new(name, label, tooltip, stock_id)
      Gtk::Action.new(__return_value)
    end

    def activate
      __return_value = LibGtk.action_activate((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def block_activate
      __return_value = LibGtk.action_block_activate((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def connect_accelerator
      __return_value = LibGtk.action_connect_accelerator((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def create_icon(icon_size)
      __return_value = LibGtk.action_create_icon((to_unsafe as LibGtk::Action*), Int32.cast(icon_size))
      Gtk::Widget.new(__return_value)
    end

    def create_menu
      __return_value = LibGtk.action_create_menu((to_unsafe as LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    def create_menu_item
      __return_value = LibGtk.action_create_menu_item((to_unsafe as LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    def create_tool_item
      __return_value = LibGtk.action_create_tool_item((to_unsafe as LibGtk::Action*))
      Gtk::Widget.new(__return_value)
    end

    def disconnect_accelerator
      __return_value = LibGtk.action_disconnect_accelerator((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def accel_closure
      __return_value = LibGtk.action_get_accel_closure((to_unsafe as LibGtk::Action*))
      GObject::Closure.new(__return_value)
    end

    def accel_path
      __return_value = LibGtk.action_get_accel_path((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def always_show_image
      __return_value = LibGtk.action_get_always_show_image((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def gicon
      __return_value = LibGtk.action_get_gicon((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.action_get_icon_name((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def is_important
      __return_value = LibGtk.action_get_is_important((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def label
      __return_value = LibGtk.action_get_label((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def name
      __return_value = LibGtk.action_get_name((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def proxies
      __return_value = LibGtk.action_get_proxies((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def sensitive
      __return_value = LibGtk.action_get_sensitive((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def short_label
      __return_value = LibGtk.action_get_short_label((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def stock_id
      __return_value = LibGtk.action_get_stock_id((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def tooltip
      __return_value = LibGtk.action_get_tooltip((to_unsafe as LibGtk::Action*))
      raise "Expected string but got null" unless __return_value; String.new(__return_value)
    end

    def visible
      __return_value = LibGtk.action_get_visible((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def visible_horizontal
      __return_value = LibGtk.action_get_visible_horizontal((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def visible_vertical
      __return_value = LibGtk.action_get_visible_vertical((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def is_sensitive
      __return_value = LibGtk.action_is_sensitive((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def is_visible
      __return_value = LibGtk.action_is_visible((to_unsafe as LibGtk::Action*))
      __return_value
    end

    def accel_group=(accel_group)
      __return_value = LibGtk.action_set_accel_group((to_unsafe as LibGtk::Action*), (accel_group.to_unsafe as LibGtk::AccelGroup*))
      __return_value
    end

    def accel_path=(accel_path)
      __return_value = LibGtk.action_set_accel_path((to_unsafe as LibGtk::Action*), accel_path)
      __return_value
    end

    def always_show_image=(always_show)
      __return_value = LibGtk.action_set_always_show_image((to_unsafe as LibGtk::Action*), Bool.cast(always_show))
      __return_value
    end

    def gicon=(icon)
      __return_value = LibGtk.action_set_gicon((to_unsafe as LibGtk::Action*), (icon.to_unsafe as LibGio::Icon*))
      __return_value
    end

    def icon_name=(icon_name)
      __return_value = LibGtk.action_set_icon_name((to_unsafe as LibGtk::Action*), icon_name)
      __return_value
    end

    def is_important=(is_important)
      __return_value = LibGtk.action_set_is_important((to_unsafe as LibGtk::Action*), Bool.cast(is_important))
      __return_value
    end

    def label=(label)
      __return_value = LibGtk.action_set_label((to_unsafe as LibGtk::Action*), label)
      __return_value
    end

    def sensitive=(sensitive)
      __return_value = LibGtk.action_set_sensitive((to_unsafe as LibGtk::Action*), Bool.cast(sensitive))
      __return_value
    end

    def short_label=(short_label)
      __return_value = LibGtk.action_set_short_label((to_unsafe as LibGtk::Action*), short_label)
      __return_value
    end

    def stock_id=(stock_id)
      __return_value = LibGtk.action_set_stock_id((to_unsafe as LibGtk::Action*), stock_id)
      __return_value
    end

    def tooltip=(tooltip)
      __return_value = LibGtk.action_set_tooltip((to_unsafe as LibGtk::Action*), tooltip)
      __return_value
    end

    def visible=(visible)
      __return_value = LibGtk.action_set_visible((to_unsafe as LibGtk::Action*), Bool.cast(visible))
      __return_value
    end

    def visible_horizontal=(visible_horizontal)
      __return_value = LibGtk.action_set_visible_horizontal((to_unsafe as LibGtk::Action*), Bool.cast(visible_horizontal))
      __return_value
    end

    def visible_vertical=(visible_vertical)
      __return_value = LibGtk.action_set_visible_vertical((to_unsafe as LibGtk::Action*), Bool.cast(visible_vertical))
      __return_value
    end

    def unblock_activate
      __return_value = LibGtk.action_unblock_activate((to_unsafe as LibGtk::Action*))
      __return_value
    end

  end
end

