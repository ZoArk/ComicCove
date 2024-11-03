class CreateComicSeries < ActiveRecord::Migration[7.2]
  def change
    create_table :comic_series do |t|
      t.string :name
      t.string :publisher

      t.timestamps
    end
  end
end
