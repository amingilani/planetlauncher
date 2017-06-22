class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.integer :status
      t.string :vendor_id
      t.references :sale, foreign_key: true

      t.timestamps
    end
  end
end
