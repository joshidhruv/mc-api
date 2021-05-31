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
require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
