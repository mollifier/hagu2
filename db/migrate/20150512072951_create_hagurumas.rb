class CreateHagurumas < ActiveRecord::Migration
  def change
    create_table :hagurumas do |t|
      t.string :name
      t.text :display_name
      t.integer :webhook_data_format

      t.timestamps null: false
    end
  end
end
