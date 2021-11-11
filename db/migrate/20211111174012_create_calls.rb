class CreateCalls < ActiveRecord::Migration[6.1]
  def change
    create_table :calls do |t|
      t.string :phone_number
      t.integer :duration

      t.timestamps
    end
  end
end
