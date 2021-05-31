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
require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
