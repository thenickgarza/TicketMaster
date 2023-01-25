class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|

      t.references :user, null: false, foreign_key: true
      t.bigint :ticket_number, null: false 

      t.timestamps
    end
  end
end
