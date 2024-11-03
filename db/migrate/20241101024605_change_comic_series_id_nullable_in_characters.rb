class ChangeComicSeriesIdNullableInCharacters < ActiveRecord::Migration[7.2]
  def change
    change_column_null :characters, :comic_series_id, true
  end
end
