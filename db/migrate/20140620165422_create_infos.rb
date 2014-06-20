class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
