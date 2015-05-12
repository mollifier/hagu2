FactoryGirl.define do
  factory :converter do
    haguruma nil
    priority 1
    input_pattern 'MyText'
    output_url 'MyText'
    outout_http_method Converter.output_http_methods[:get]
    output_data_format Converter.output_http_methods[:json]
  end
end
