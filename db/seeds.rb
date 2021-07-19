# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'CSV Data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = RatingScale.new
  t.question = row['Question']
  t.teaming_stages = row['Teaming Stages']
  t.appears_days = row['Appears (Day)']
  t.frequency = row['Frequency']
  t.type_name = row['Type']
  t.role = row['Role']
  t.is_required = row['Required?']
  t.conditions = row['Conditions']
  t.mapping = row['Mapping']
  t.save
  puts "#{t.question}, #{t.mapping} saved"
end