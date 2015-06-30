class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :namae
      t.string :hidzuke

      t.timestamps null: false
    end
  end
end
