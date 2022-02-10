class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :specialty
      t.string :zip_code

      t.belongs_to :city, index: true #cette ligne rajoute la référence à la table city
      t.timestamps
    end
  end
end
