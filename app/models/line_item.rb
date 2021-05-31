# == Schema Information
#
# Table name: line_items
#
#  id          :uuid             not null, primary key
#  quantity    :integer
#  description :string
#  amount      :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  invoice_id  :uuid
#  deleted_at  :datetime
#
class LineItem < ApplicationRecord
    validates :quantity , presence: true
    validates :description , presence: true
    validates :amount , presence: true
    acts_as_paranoid
    belongs_to :invoice
end
