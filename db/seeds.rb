# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
require 'csv'

Character.destroy_all

# Load DC characters
CSV.foreach(Rails.root.join('db', 'dc-wikia-data.csv'), headers: true) do |row|
  Character.create(
    page_id: row['page_id'],
    name: row['name'],
    urlslug: row['urlslug'],
    identity_status: row['ID'],
    alignment: row['ALIGN'],
    eye_color: row['EYE'],
    hair_color: row['HAIR'],
    sex: row['SEX'],
    gsm: row['GSM'],
    alive_status: row['ALIVE'],
    appearances: row['APPEARANCES'],
    first_appearance: row['FIRST APPEARANCE'],
    year: row['Year'],
    universe: 'DC'
  )
end

# Load Marvel characters
CSV.foreach(Rails.root.join('db', 'marvel-wikia-data.csv'), headers: true) do |row|
  Character.create(
    page_id: row['page_id'],
    name: row['name'],
    urlslug: row['urlslug'],
    identity_status: row['ID'],
    alignment: row['ALIGN'],
    eye_color: row['EYE'],
    hair_color: row['HAIR'],
    sex: row['SEX'],
    gsm: row['GSM'],
    alive_status: row['ALIVE'],
    appearances: row['APPEARANCES'],
    first_appearance: row['FIRST APPEARANCE'],
    year: row['Year'],
    universe: 'Marvel'
  )
end

