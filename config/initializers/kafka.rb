
puts "Kafka | Environment: #{Rails.env}"

DeliveryBoy.configure do |config|
    config.brokers = YAML.load_file(File.join(Rails.root, "config", "kafka.yml"))[Rails.env]["brokers"]
end

Racecar.configure do |config|
    config.client_id = "customer"
    config.brokers = YAML.load_file(File.join(Rails.root, "config", "kafka.yml"))[Rails.env]["brokers"]
end