class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact
      t.string :licence_num
      t.integer :licence_type

      t.timestamps
    end
  end
end
