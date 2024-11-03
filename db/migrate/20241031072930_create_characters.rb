class CreateCharacters < ActiveRecord::Migration[7.2]
  def change
    create_table :characters do |t|
      t.integer :page_id
      t.string :name
      t.string :urlslug
      t.string :identity_status
      t.string :alignment
      t.string :eye_color
      t.string :hair_color
      t.string :sex
      t.string :gsm
      t.string :alive_status
      t.integer :appearances
      t.string :first_appearance
      t.integer :year

      t.timestamps
    end
  end
end
