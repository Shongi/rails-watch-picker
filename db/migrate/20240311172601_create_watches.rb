# frozen_string_literal: true

# Creates the watches table with brand, name, image_path, selected, and last_selected_at columns.
class CreateWatches < ActiveRecord::Migration[7.1]
  def change
    create_table :watches do |t|
      t.string :brand
      t.string :name
      t.string :image_path
      t.boolean :selected, default: false
      t.datetime :last_selected_at

      t.timestamps
    end
  end
end
