module MICDistricts
  include YamlLoader
  def self.all
    YamlLoader.yaml_object('districts')[:districts]
  end
end
