require 'yaml_loader'

module MICDistricts
  def all
    YamlLoader.yaml_object('districts')[:districts]
  end
end
