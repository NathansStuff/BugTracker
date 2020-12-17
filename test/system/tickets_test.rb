require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  setup do
    @ticket = tickets(:one)
  end

  test "visiting the index" do
    visit tickets_url
    assert_selector "h1", text: "Tickets"
  end

  test "creating a Ticket" do
    visit tickets_url
    click_on "New Ticket"

    fill_in "Actual results", with: @ticket.actual_results
    fill_in "Expected results", with: @ticket.expected_results
    fill_in "Notes", with: @ticket.notes
    fill_in "Steps to reproduce", with: @ticket.steps_to_reproduce
    fill_in "Summary", with: @ticket.summary
    click_on "Create Ticket"

    assert_text "Ticket was successfully created"
    click_on "Back"
  end

  test "updating a Ticket" do
    visit tickets_url
    click_on "Edit", match: :first

    fill_in "Actual results", with: @ticket.actual_results
    fill_in "Expected results", with: @ticket.expected_results
    fill_in "Notes", with: @ticket.notes
    fill_in "Steps to reproduce", with: @ticket.steps_to_reproduce
    fill_in "Summary", with: @ticket.summary
    click_on "Update Ticket"

    assert_text "Ticket was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket" do
    visit tickets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket was successfully destroyed"
  end
end
