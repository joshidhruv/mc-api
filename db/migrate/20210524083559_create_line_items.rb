class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items, id: :uuid do |t|
      t.integer :quantity, default: 0, null: false
      t.string :description
      t.bigint :amount, default: 0, null: false

      t.timestamps
    end
  end
end
