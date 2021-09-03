class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.integer :chapter_number
      t.belongs_to :manga, foreign_key: true

      t.timestamps
    end
  end
end
