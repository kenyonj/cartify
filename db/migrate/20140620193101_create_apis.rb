class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :api_key, null: false
      t.boolean :active, default: true, null: false

      t.timestamps
    end
  end
end
