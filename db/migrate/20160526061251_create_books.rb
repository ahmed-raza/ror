class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :auther_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end