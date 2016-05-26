class CreateAuthers < ActiveRecord::Migration
  def change
    create_table :authers do |t|
      t.string :auther
      t.text :bio

      t.timestamps
    end
  end
end
