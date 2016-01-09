class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :category, index: true
      t.integer :user_age
      t.string :user_telephone

      t.timestamps
    end
  end
end
