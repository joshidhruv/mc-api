class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices, id: :uuid do |t|
      t.string :identifier
      t.integer :currency
      t.string :memo
      t.datetime :due_date
      t.bigint :open_balance, default: 0, null: false
      t.bigint :amount, default: 0,  null: false

      t.timestamps
    end
  end
end
