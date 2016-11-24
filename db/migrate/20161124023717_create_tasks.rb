class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :difficulty
      t.date :close_date
      t.date :close_limit_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
