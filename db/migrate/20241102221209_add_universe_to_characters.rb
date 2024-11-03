class AddUniverseToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_column :characters, :universe, :string
  end
end
