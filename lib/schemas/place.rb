require 'schemas/thing'

module Schemas
  module Place
    include Schemas::Thing

    attr_accessor :contained_in
    attr_accessor :has_map
  end
end
