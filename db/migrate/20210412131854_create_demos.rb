class CreateDemos < ActiveRecord::Migration[6.1]
  def change
    create_table :demos do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :mobile
      t.string :address

      t.timestamps
    end
  end
end
