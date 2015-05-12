FactoryGirl.define do
  factory :haguruma do
    name "datadog"
    display_name "Datadog"
    webhook_data_format Haguruma.webhook_data_formats[:JSON]
  end

end
