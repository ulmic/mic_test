module YamlLoader
  def self.yaml_object(filename)
    YAML.load_file("#{Rails.root}/lib/yaml/#{filename}.yml").with_indifferent_access
  end
end
