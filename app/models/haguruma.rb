class Haguruma < ActiveRecord::Base
  # リクエスト元から送られてくるパラメータの形式
  enum webhook_data_format: { form: 1, JSON: 2 }
  has_many :converters, dependent: :destroy
end
