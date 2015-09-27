class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :title
      t.decimal :value, precision: 10, scale: 2
      t.references :budget, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
