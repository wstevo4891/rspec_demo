class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone
      t.integer :contact_id

      t.timestamps null: false
    end
  end
end