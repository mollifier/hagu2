class Haguruma < ActiveRecord::Base
  # リクエスト元から送られてくるパラメータの形式
  enum webhook_data_format: { form: 1, JSON: 2 }
end
