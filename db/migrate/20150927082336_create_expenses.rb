class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.decimal :value, precision: 10, scale: 2
      t.string :category
      t.references :budget, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
