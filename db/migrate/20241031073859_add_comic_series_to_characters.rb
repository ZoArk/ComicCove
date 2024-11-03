class AddComicSeriesToCharacters < ActiveRecord::Migration[7.2]
  def change
    add_reference :characters, :comic_series, null: false, foreign_key: true
  end
end
