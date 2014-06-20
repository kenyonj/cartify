class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :token

      t.timestamps
    end
  end
end
