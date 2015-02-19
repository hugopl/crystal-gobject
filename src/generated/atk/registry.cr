module Atk
  class Registry < GObject::Object
    def initialize @atk_registry
    end

    def to_unsafe
      @atk_registry.not_nil!
    end

    def factory(type)
      __return_value = LibAtk.registry_get_factory((to_unsafe as LibAtk::Registry*), UInt64.cast(type))
      Atk::ObjectFactory.new(__return_value)
    end

    def factory_type(type)
      __return_value = LibAtk.registry_get_factory_type((to_unsafe as LibAtk::Registry*), UInt64.cast(type))
      __return_value
    end

    def factory_type=(type, factory_type)
      __return_value = LibAtk.registry_set_factory_type((to_unsafe as LibAtk::Registry*), UInt64.cast(type), UInt64.cast(factory_type))
      __return_value
    end

  end
end

