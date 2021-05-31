# == Schema Information
#
# Table name: invoices
#
#  id           :uuid             not null, primary key
#  identifier   :string
#  currency     :integer
#  memo         :string
#  due_date     :datetime
#  open_balance :bigint
#  amount       :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  sender       :json
#  recipient    :json
#  deleted_at   :datetime
#
class InvoiceSerializer < ActiveModel::Serializer
  attributes :sender, :recipient, :identifier, :currency, :memo, :due_date, :created_at, :open_balance, :amount, :line_items
  attribute :id, key: :invoice_id

  def due_date
    object&.due_date&.strftime '%Y/%m/%d'
  end
  def created_at
    object&.created_at&.strftime '%Y/%m/%d'
  end
  def line_items
  object.line_items.map {|li| {quantity: li.quantity, description: li.description, amount: li.amount }}
  end
end
