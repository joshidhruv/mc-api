require "application_system_test_case"

class LineItemsTest < ApplicationSystemTestCase
  setup do
    @line_item = line_items(:one)
  end

  test "visiting the index" do
    visit line_items_url
    assert_selector "h1", text: "Line Items"
  end

  test "creating a Line item" do
    visit line_items_url
    click_on "New Line Item"

    fill_in "Amount", with: @line_item.amount
    fill_in "Description", with: @line_item.description
    fill_in "Quantity", with: @line_item.quantity
    click_on "Create Line item"

    assert_text "Line item was successfully created"
    click_on "Back"
  end

  test "updating a Line item" do
    visit line_items_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @line_item.amount
    fill_in "Description", with: @line_item.description
    fill_in "Quantity", with: @line_item.quantity
    click_on "Update Line item"

    assert_text "Line item was successfully updated"
    click_on "Back"
  end

  test "destroying a Line item" do
    visit line_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line item was successfully destroyed"
  end
end