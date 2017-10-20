class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.integer :recuriter_id
      t.datetime :time
      t.integer :quantity
      t.float :worker_num
      t.decimal :price, precision: 7, scale: 2
      t.string :content
      t.integer :diving_num
      t.integer :duration
      t.text :note

      t.timestamps
    end
  end
end
