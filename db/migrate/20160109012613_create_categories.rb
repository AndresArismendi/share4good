class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.string :category_from
      t.string :categ

      t.timestamps
    end
  end
end
