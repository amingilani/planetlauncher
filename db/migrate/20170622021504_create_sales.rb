class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.references :customer, foreign_key: true
      t.string :planet_name

      t.timestamps
    end
  end
end
