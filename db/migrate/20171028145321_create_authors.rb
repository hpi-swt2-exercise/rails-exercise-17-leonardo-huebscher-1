class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :firstName
      t.string :lastName
      t.string :homepage

      t.timestamps null: false
    end
  end
end
