class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title,    null: false
      t.text :memo
      t.references :list,  foreign_key: true
      t.timestamps
    end
  end
end
