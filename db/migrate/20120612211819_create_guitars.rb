class CreateGuitars < ActiveRecord::Migration
  def change
    create_table :guitars do |t|
      t.string :brand
      t.string :year

      t.timestamps
    end
  end
end
