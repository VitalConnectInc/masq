Masq::Engine.configure do
  config_file_path = Rails.root.join("config", "masq.yml")
  parsed_erb = ERB.new(config_file_path.read).result
  config.masq = YAML.load(parsed_erb)[Rails.env]
end
