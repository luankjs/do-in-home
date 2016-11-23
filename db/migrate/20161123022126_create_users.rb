class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :is_admin
      t.string :phone

      t.timestamps
    end
  end
end
