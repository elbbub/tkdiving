class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :freelancer_id
      t.integer :job_id
      t.integer :take_quantity

      t.timestamps
    end
  end
end
