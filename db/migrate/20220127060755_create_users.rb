class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :mobile_number
      t.text :bio
      t.text :skills
      t.timestamps
    end
  end
end
