class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :photo
      t.string :description
      t.boolean :task

      t.timestamps
    end
  end
end
