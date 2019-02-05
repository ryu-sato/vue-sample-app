class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.string :string
      t.integer :gender
      t.date :birth
      t.date :joined_date
      t.bigint :payment
      t.text :note

      t.timestamps
    end
  end
end
