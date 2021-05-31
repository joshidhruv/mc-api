class AddJsonAttrToInvoice < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :sender, :json
    add_column :invoices, :recipient, :json
    add_column :invoices, :deleted_at, :datetime
  end
end
