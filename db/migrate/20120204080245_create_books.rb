class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :authers
      t.integer :publish_year
      t.text :comment
      t.boolean :checked_out

      t.timestamps
    end
  end
end
