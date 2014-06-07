class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.integer :rating
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
