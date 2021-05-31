class AddInvoiceReferenceToLineItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :line_items, :invoice, type: :uuid, foreign_key: true
    add_column :line_items, :deleted_at, :datetime
  end
end
