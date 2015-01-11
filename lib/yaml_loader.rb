require 'active_support/core_ext/hash'

module Kabal
  module Config
    class YamlLoader
      def self.yaml_object(filename)
        YAML.load_file(Rails.root + '/yaml/' + filename + '.yml').with_indifferent_access
      end
    end
  end
end
