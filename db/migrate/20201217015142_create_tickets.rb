class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :summary
      t.string :steps_to_reproduce
      t.string :expected_results
      t.string :actual_results
      t.string :notes

      t.timestamps
    end
  end
end
