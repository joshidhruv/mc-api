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
class Invoice < ApplicationRecord
    validates :identifier , presence: true
    validates :currency , presence: true
    validates :due_date , presence: true
    validates :open_balance , presence: true
    validates :amount , presence: true
    validates :sender , presence: true
    validates :recipient , presence: true
    
    acts_as_paranoid
    enum currency: { USD: 0 }
    has_many :line_items, dependent: :destroy
    accepts_nested_attributes_for :line_items
end
