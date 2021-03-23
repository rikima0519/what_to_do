class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title,    null: false
      t.text :memo,       null: false
      t.references :list, foreign_key: true, null: false
      t.timestamps
    end
  end
end
