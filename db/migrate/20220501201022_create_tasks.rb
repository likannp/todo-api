class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.references :project, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.datetime :deadline_at

      t.timestamps
    end
  end
end
