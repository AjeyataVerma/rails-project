class CreateCompetitions < ActiveRecord::Migration[6.1]
  def change
    create_table :competitions do |t|
      t.string :comp_name
      t.text :description 
      t.string :duration 
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
