class CreateLeaderboards < ActiveRecord::Migration[6.1]
  def change
    create_table :leaderboards do |t|
      t.references :user, foreign_key: true
      t.references :competition,  foreign_key: true
      t.string :votes
      t.timestamps
    end
  end
end
