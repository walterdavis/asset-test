class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :project, index: true, foreign_key: true
      t.string :blob_file_name
      t.string :blob_content_type
      t.integer :blob_file_size
      t.integer :blob_width
      t.integer :blob_height
      t.text :blob_metadata

      t.timestamps null: false
    end
  end
end
