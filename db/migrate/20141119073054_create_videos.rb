class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :thumb
      t.string :content
      t.string :comments
      t.string :tags
      t.string :ratings
      t.references :user, index: true

      t.timestamps
    end
  end
end
