class CreateRatingScales < ActiveRecord::Migration[6.1]
  def change
    create_table :rating_scales do |t|
      t.text :question
      t.string :teaming_stages
      t.integer :appears_days
      t.integer :frequency
      t.string :type_name
      t.string :role
      t.boolean :is_required
      t.string :conditions
      t.string :mapping

      t.timestamps
    end
  end
end
