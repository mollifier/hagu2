class Converter < ActiveRecord::Base
  enum output_http_method: { get: 1, post: 2, patch: 3 }
  enum output_data_format: { form: 1, json: 2 }
  belongs_to :haguruma
end
