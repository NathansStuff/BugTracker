json.extract! ticket, :id, :summary, :steps_to_reproduce, :expected_results, :actual_results, :notes, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
