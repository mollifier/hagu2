class CreateConverters < ActiveRecord::Migration
  def change
    create_table :converters do |t|
      t.references :haguruma, index: true, foreign_key: true
      t.integer :priority
      t.text :input_pattern
      t.text :output_url
      t.integer :outout_http_method
      t.integer :output_data_format

      t.timestamps null: false
    end
  end
end
