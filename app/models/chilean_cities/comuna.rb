module ChileanCities
  class Comuna < ActiveRecord::Base

    # See https://github.com/plataformatec/devise/blob/3232d14b20da4a596f2c0ff31b8a9ac0a529322e/lib/generators/devise/orm_helpers.rb
    def self.needs_attr_accessible?
      rails_3? && !strong_parameters_enabled?
    end

    def self.rails_3?
      Rails::VERSION::MAJOR == 3
    end

    def self.strong_parameters_enabled?
      defined?(ActionController::StrongParameters)
    end

    if needs_attr_accessible?
      attr_accessible :name, :code, :provincia, :region, :region_number
    end

    if methods.exclude?(:find_or_create_by_name)
      def self.find_or_create_by_name(attributes)
        find_or_create_by(attributes.slice(:name)) do |comuna|
          comuna.assign_attributes(attributes.except(:name))
        end
      end
    end
  end
end
