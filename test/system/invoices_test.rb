require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Amount", with: @invoice.amount
    fill_in "Currency", with: @invoice.currency
    fill_in "Due date", with: @invoice.due_date
    fill_in "Identifier", with: @invoice.identifier
    fill_in "Memo", with: @invoice.memo
    fill_in "Open balance", with: @invoice.open_balance
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @invoice.amount
    fill_in "Currency", with: @invoice.currency
    fill_in "Due date", with: @invoice.due_date
    fill_in "Identifier", with: @invoice.identifier
    fill_in "Memo", with: @invoice.memo
    fill_in "Open balance", with: @invoice.open_balance
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end
