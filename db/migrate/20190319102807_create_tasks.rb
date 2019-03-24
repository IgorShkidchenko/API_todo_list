class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.boolean :complete, default: false, null: false
      t.datetime :deadline
      t.integer :position
      t.integer :comments_count
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
