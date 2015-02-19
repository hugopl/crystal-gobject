module Gio
  module Initable
    def self.newv(object_type, n_parameters, parameters, cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.initable_newv(UInt64.cast(object_type), UInt32.cast(n_parameters), parameters, (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      GObject::Object.new(__return_value)
    end

    def init(cancellable)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGio.initable_init((to_unsafe as LibGio::Initable*), (cancellable.to_unsafe as LibGio::Cancellable*), pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

  end
end

