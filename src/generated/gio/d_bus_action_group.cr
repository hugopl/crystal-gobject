module Gio
  class DBusActionGroup < GObject::Object
    @gio_d_bus_action_group : LibGio::DBusActionGroup*?
    def initialize(@gio_d_bus_action_group : LibGio::DBusActionGroup*)
    end

    def to_unsafe
      @gio_d_bus_action_group.not_nil!
    end

    # Implements ActionGroup
    # Implements RemoteActionGroup
    def self.get(connection, bus_name, object_path)
      __return_value = LibGio.d_bus_action_group_get(connection.to_unsafe.as(LibGio::DBusConnection*), bus_name.to_unsafe, object_path.to_unsafe)
      Gio::DBusActionGroup.new(__return_value)
    end

  end
end

