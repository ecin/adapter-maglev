raise RuntimeError, 'not running on Maglev' unless defined?(Maglev)

require 'adapter'

module Adapter
  module Maglev
    def read(key)
      client[key_for(key)]
    end

    def write(key, value)
      client[key_for(key)] = value
    end

    def delete(key)
      client.delete key_for(key)
    end

    def clear
      client.clear
    end
    
    def key?(key)
      client.key? key_for(key)
    end
    
    def encode(value)
      value
    end

    def decode(value)
      value
    end
  end
end

Adapter.define(:maglev, Adapter::Maglev)