class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :namae
      t.integer :month
      t.integer :day

      t.timestamps null: false
    end
  end
end
