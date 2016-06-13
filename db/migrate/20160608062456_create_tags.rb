class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :taggable_type
      t.integer :taggable_id

      t.timestamps
    end
  end
end
