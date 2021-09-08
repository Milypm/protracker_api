class CreateProjectTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :project_tasks do |t|
      t.string :task
      t.string :assigned_to
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
