class CreateDevTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :dev_tasks do |t|
      t.text :notes
      t.integer :time
      t.references :user, null: false, foreign_key: true
      t.references :project_task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
